import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_al_quran_digital/bloc/get_all_surah/get_all_surah_cubit.dart';
import 'package:my_al_quran_digital/theme.dart';
import 'package:my_al_quran_digital/widget/surah_card.dart';

class MurotalScreen extends StatefulWidget {
  const MurotalScreen({super.key});

  @override
  State<MurotalScreen> createState() => _MurotalScreenState();
}

class _MurotalScreenState extends State<MurotalScreen> {
  final searchEcd = TextEditingController();
  @override
  void initState() {
    super.initState();
    context.read<GetAllSurahCubit>().fetchAll();
  }

  @override
  void dispose() {
    super.dispose();
    searchEcd.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        centerTitle: true,
        title: Text(
          "Murotal",
          style: primaryText.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: TextFormField(
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
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              child: BlocBuilder<GetAllSurahCubit, GetAllSurahState>(
                  builder: (context, state) {
                if (state is GetAllSurahILoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is GetAllSurahFailure) {
                  return Text(state.msg);
                } else if (state is GetAllSurahSuccess) {
                  final data = state.data
                      .where((element) => (element.namaLatin
                          .toString()
                          .toLowerCase()
                          .contains(searchEcd.text.toLowerCase())))
                      .toList();
                  return ListView.separated(
                      separatorBuilder: (BuildContext context, int index) =>
                          const SizedBox(
                            height: 15,
                          ),
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return SurahCard(item: data[index]);
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
