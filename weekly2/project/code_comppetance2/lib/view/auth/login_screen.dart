import 'package:code_comppetance2/themes.dart';
import 'package:flutter/material.dart';

class LoginScren extends StatefulWidget {
  const LoginScren({super.key});

  @override
  State<LoginScren> createState() => _LoginScrenState();
}

class _LoginScrenState extends State<LoginScren> {
  final nameEcd = TextEditingController();
  final passEcd = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(children: [
            Image.asset(
              "assets/sircle_logo.png",
              width: 70,
            ),
            TextFormField(
              controller: nameEcd,
              decoration: const InputDecoration(
                  label: Text("Username"), hintText: "Masukan username anda"),
            ),
            TextFormField(
              controller: passEcd,
              decoration: const InputDecoration(
                  label: Text("Password"), hintText: "Masukan password"),
            )
          ]),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(30),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: cYellow),
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              child: const Text(
                "Login",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white),
              )),
        ),
      ),
    );
  }
}
