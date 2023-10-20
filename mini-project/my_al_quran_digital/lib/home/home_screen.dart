import 'package:flutter/material.dart';
import 'package:my_al_quran_digital/home/home_menu.dart';
import 'package:my_al_quran_digital/widget/surah_card.dart';
import 'package:my_al_quran_digital/theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

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
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
          child: Text(
            "Terakhir dibaca",
            style: primaryText.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        //const SurahCard(),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 5),
          child: Text(
            "Fitur",
            style: primaryText.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const HomeMenu(),
      ],
    );
  }
}
