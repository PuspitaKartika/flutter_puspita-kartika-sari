import 'package:flutter/material.dart';
import 'package:my_al_quran_digital/home/home_screen.dart';
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
    const Center(child: Text("menu1")),
    const Center(child: Text("menu1")),
    const Text("profile"),
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
                  Icons.menu_book,
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