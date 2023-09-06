import 'package:flutter/material.dart';
import 'package:soal_prioritas1/model/contact_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ContactModel> contactList = [
    ContactModel(name: "Leanne Graham", no: "1-770-736-8031 x56442"),
    ContactModel(name: "Ervin Howell", no: "010-692-6593 x09125"),
    ContactModel(name: "Clementine Bauch", no: "1-463-123-447"),
    ContactModel(name: "Patricia Lebsack", no: "493-170-9623x156"),
    ContactModel(name: "Chelsey Dietrich", no: "(254)954-1289"),
    ContactModel(name: "Mrs. Dennis Schullist", no: "1-477-935-8478 x6430"),
    ContactModel(name: "Kurtis Weissnat", no: "210.067.6132")
  ];

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
      body: ListView.builder(
          itemCount: contactList.length,
          itemBuilder: (context, index) {
            final contact = contactList[index];
            return ListTile(
              leading: Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.green),
                child: Text(
                  contact.name![0],
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              title: Text(contact.name!),
              subtitle: Text(contact.no!),
            );
          }),
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
