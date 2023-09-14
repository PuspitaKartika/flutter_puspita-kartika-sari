import 'package:flutter/material.dart';

const cPrimary = Color(0xff6200EE);
const cSecondary = Color(0xff03DAC5);

List<String> kursus = [
  "Flutter",
  "ReactJs",
  "VueJs",
  "Tailwind CSS",
  "UI/UX",
  "Figma",
  "Digital Marketing"
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Flutter App",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: cPrimary,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              color: Colors.grey,
            ),
          )
        ],
      ),
      body: ListView.separated(
          itemCount: kursus.length,
          separatorBuilder: (context, index) => const Divider(),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Learn ${kursus[index]}",
                style: const TextStyle(fontSize: 16),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: cSecondary,
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          backgroundColor: cPrimary,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Favorite"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.error), label: "Information")
          ]),
    );
  }
}
