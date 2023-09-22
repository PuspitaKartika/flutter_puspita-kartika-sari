import 'package:flutter/material.dart';
import 'package:soal_prioritas1/calender_widget.dart';
import 'package:soal_prioritas1/color_widget.dart';
import 'package:soal_prioritas1/file_widget.dart';

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
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: AdvanceForm());
  }
}

class AdvanceForm extends StatefulWidget {
  const AdvanceForm({super.key});

  @override
  State<AdvanceForm> createState() => _AdvanceFormState();
}

class _AdvanceFormState extends State<AdvanceForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Interactive Widget",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [CalenderWidget(), ColorWidget(), FileWIdget()],
        ),
      ),
    );
  }
}
