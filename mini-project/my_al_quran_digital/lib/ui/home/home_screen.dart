import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_al_quran_digital/bloc/get_all_surah/get_all_surah_cubit.dart';
import 'package:my_al_quran_digital/ui/home/home_menu.dart';
import 'package:my_al_quran_digital/ui/home/widget/home_slider.dart';
import 'package:my_al_quran_digital/theme.dart';
import 'package:my_al_quran_digital/widget/surah_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

void initState() {}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Stack(children: [
          Image.asset("assets/header.png"),
          Positioned(
            bottom: 40,
            left: MediaQuery.of(context).size.width * 0.3,
            child: Text(
              "Assalamu'alaikum",
              style: primaryText.copyWith(fontWeight: FontWeight.bold),
            ),
          )
        ]),
        const HomeSlider(),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 5),
          child: Text(
            "Fitur",
            style: primaryText.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const HomeMenu(),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 5),
          child: Text(
            "Dengarkan murotal hari ini ",
            style: primaryText.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        BlocBuilder<GetAllSurahCubit, GetAllSurahState>(
            builder: (context, state) {
          if (state is GetAllSurahILoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is GetAllSurahFailure) {
            return Text(state.msg);
          } else if (state is GetAllSurahSuccess) {
            return SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 20,
                    );
                  },
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return SurahCard(item: state.data[113 - index]);
                  }),
            );
          }
          return const SizedBox();
        })
      ],
    );
  }
}
