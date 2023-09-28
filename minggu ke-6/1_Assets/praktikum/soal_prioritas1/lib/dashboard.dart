import 'package:flutter/material.dart';
import 'package:soal_prioritas1/view/galeri/galeri_page.dart';
import 'package:soal_prioritas1/view/home/home_page.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

List menu = [const HomePage(), const GaleriPage()];

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Home"),
      // ),
      // drawer: Drawer(
      //   child: ListView(
      //     padding: const EdgeInsets.all(30),
      //     children: const [
      //       Text("Home"),
      //       SizedBox(
      //         height: 30,
      //       ),
      //       Text("Settings")
      //     ],
      //   ),
      // ),
      body: menu[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.camera_alt), label: "Galeri")
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
