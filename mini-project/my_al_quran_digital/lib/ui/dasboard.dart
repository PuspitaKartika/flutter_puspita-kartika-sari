import 'package:flutter/material.dart';
import 'package:my_al_quran_digital/ui/jadwal_solat/jadwal_solat_screen.dart';
import 'package:my_al_quran_digital/ui/open_ai/open_ai_screen.dart';
import 'package:my_al_quran_digital/ui/profile/profile_screen.dart';
import 'package:my_al_quran_digital/ui/home/home_screen.dart';
import 'package:my_al_quran_digital/theme.dart';

class Dasboard extends StatefulWidget {
  const Dasboard({super.key});

  @override
  State<Dasboard> createState() => _DasboardState();
}

class _DasboardState extends State<Dasboard> {
  int currenIndex = 0;
  List bodyScreen = [
    const HomeScreen(),
    const JadwalSolatSceen(),
    const OpenAiScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              currenIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: currenIndex == 0 ? secondaryColor : bgColor,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.mosque,
                  color: currenIndex == 1 ? secondaryColor : bgColor,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.bug_report,
                  color: currenIndex == 2 ? secondaryColor : bgColor,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: currenIndex == 3 ? secondaryColor : bgColor,
                ),
                label: ""),
          ]),
      body: bodyScreen[currenIndex],
    );
  }
}
