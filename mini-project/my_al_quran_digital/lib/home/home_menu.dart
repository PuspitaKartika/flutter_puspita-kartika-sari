import 'package:flutter/material.dart';
import 'package:my_al_quran_digital/theme.dart';
import 'package:my_al_quran_digital/utils/custom_botton_icon_image.dart';

class HomeMenu extends StatefulWidget {
  const HomeMenu({super.key});

  @override
  State<HomeMenu> createState() => _HomeMenuState();
}

class _HomeMenuState extends State<HomeMenu> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomButtonIconImage(
            onTap: () {}, iconImage: "icon_quran.png", text: "Al-Quran"),
        CustomButtonIconImage(
            onTap: () {}, iconImage: "Icon_doa.png", text: "Doa"),
        CustomButtonIconImage(
            onTap: () {}, iconImage: "Icon_tafsir.png", text: "Tafsir")
      ],
    );
  }
}
