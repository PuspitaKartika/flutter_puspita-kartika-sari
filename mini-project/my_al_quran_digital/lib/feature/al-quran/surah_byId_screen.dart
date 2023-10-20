import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_al_quran_digital/bloc/get_surah_by)id/get_surah_by_id_cubit.dart';
import 'package:my_al_quran_digital/theme.dart';
import 'package:my_al_quran_digital/widget/surah_card.dart';

import 'widget/ayat_card.dart';

class SurahByIdScreen extends StatefulWidget {
  final int id;
  const SurahByIdScreen({required this.id, super.key});

  @override
  State<SurahByIdScreen> createState() => _SurahByIdScreenState();
}

class _SurahByIdScreenState extends State<SurahByIdScreen> {
  @override
  void initState() {
    super.initState();
    context.read<GetSurahByIdCubit>().fectSurahById(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetSurahByIdCubit, GetSurahByIdState>(
      builder: (context, state) {
        if (state is GetSurahByIdLoading) {
          return const CircularProgressIndicator();
        } else if (state is GetSurahByIdFailure) {
          return Scaffold(body: Center(child: Text(state.msg)));
        } else if (state is GetSurahByIdSuccess) {
          final item = state.data;
          return Scaffold(
            backgroundColor: bgColor,
            appBar: AppBar(
              backgroundColor: bgColor,
              centerTitle: true,
              title: Text(
                item.namaLatin,
                style: primaryText.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: primaryColor),
              ),
            ),
            body: SingleChildScrollView(
                child: Column(
              children: [
                SurahCard(item: item),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: ListView.builder(
                      itemCount: item.jumlahAyat,
                      itemBuilder: (context, index) {
                        return AyatCard(item: item.ayat![index]);
                      }),
                )
              ],
            )),
          );
        }
        return const SizedBox();
      },
    );
  }
}
