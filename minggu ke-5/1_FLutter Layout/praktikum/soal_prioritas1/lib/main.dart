import 'package:flutter/material.dart';
import 'package:soal_prioritas1/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.light(),
        initialRoute: 'home',
        routes: {'home': (_) => const HomePage()});
  }
}
