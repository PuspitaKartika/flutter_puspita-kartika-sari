import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_al_quran_digital/bloc/get_doa_list/get_doa_list_cubit.dart';
import 'package:my_al_quran_digital/feature/doa/doa_card.dart';
import 'package:my_al_quran_digital/theme.dart';

class DoaScreen extends StatefulWidget {
  const DoaScreen({super.key});

  @override
  State<DoaScreen> createState() => _DoaScreenState();
}

class _DoaScreenState extends State<DoaScreen> {
  final searchEcd = TextEditingController();

  @override
  void initState() {
    super.initState();
    context.read<GetDoaListCubit>().fetchAll();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        centerTitle: true,
        title: Text(
          "Doa",
          style:
              primaryText.copyWith(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            TextFormField(
                controller: searchEcd,
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.search),
                  hintText: 'Search',
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.all(10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                ),
                style: primaryText),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              child: BlocBuilder<GetDoaListCubit, GetDoaListState>(
                  builder: (context, state) {
                if (state is GetDoaListLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is GetDoaListFailure) {
                  return Text(state.msg);
                } else if (state is GetDoaListSuccess) {
                  final data = state.data
                      .where((element) => (element.nama
                          .toString()
                          .toLowerCase()
                          .contains(searchEcd.text.toLowerCase())))
                      .toList();
                  return ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return DoaCard(item: data[index]);
                      });
                }
                return const SizedBox();
              }),
            )
          ],
        ),
      ),
    );
  }
}
