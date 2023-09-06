import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MaterialApp"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(30),
          children: const [
            Text("Home"),
            SizedBox(
              height: 30,
            ),
            Text("Settings")
          ],
        ),
      ),
      body: const Center(child: Text("This is MaterialApp")),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            label: 'Setting')
      ]),
    );
  }
}
