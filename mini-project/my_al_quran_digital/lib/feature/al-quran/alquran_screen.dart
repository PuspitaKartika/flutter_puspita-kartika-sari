import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_al_quran_digital/bloc/get_all_surah/get_all_surah_cubit.dart';
import 'package:my_al_quran_digital/feature/al-quran/widget/alquran_card.dart';
import 'package:my_al_quran_digital/theme.dart';

class AlQuranScreen extends StatefulWidget {
  const AlQuranScreen({super.key});

  @override
  State<AlQuranScreen> createState() => _AlQuranScreenState();
}

class _AlQuranScreenState extends State<AlQuranScreen> {
  final searchEcd = TextEditingController();
  @override
  void initState() {
    super.initState();
    context.read<GetAllSurahCubit>().fetchAll();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        centerTitle: true,
        title: Text(
          "Al-Quran",
          style: primaryText.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
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
                  return ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return AlQuranCard(item: data[index]);
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
