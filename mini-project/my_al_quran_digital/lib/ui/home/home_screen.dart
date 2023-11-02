import 'package:flutter/material.dart';
import 'package:my_al_quran_digital/ui/home/home_menu.dart';
import 'package:my_al_quran_digital/ui/home/widget/home_slider.dart';
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
        const HomeSlider(),
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