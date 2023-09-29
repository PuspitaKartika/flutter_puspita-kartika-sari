import 'package:code_competence1/themes.dart';
import 'package:code_competence1/view/home/home_contact_widget.dart';
import 'package:code_competence1/view/home/home_division_widget.dart';
import 'package:code_competence1/view/home/home_event.widget.dart';
import 'package:code_competence1/view/home/home_header_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeHeader(),
          HomeDivisionWidget(),
          HomeEventWidget(),
          HomeContactWIdget()
        ],
      ),
    );
  }
}
