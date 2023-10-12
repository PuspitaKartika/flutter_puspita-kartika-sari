import 'package:code_comppetance2/themes.dart';
import 'package:code_comppetance2/view/home/home_about_us_widget.dart';
import 'package:code_comppetance2/view/home/home_contact_widget.dart';
import 'package:code_comppetance2/view/home/home_division_widget.dart';
import 'package:code_comppetance2/view/home/home_event.widget.dart';
import 'package:code_comppetance2/view/home/home_header_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        drawer: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width * 0.7,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Text(
                "Our Menu",
                style: primaryText.copyWith(
                    fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: cYellow,
                  shadowColor: Colors.grey,
                ),
                onPressed: () {},
                child: Text(
                  "Contact Us",
                  style: primaryText.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: cYellow,
                  shadowColor: Colors.grey,
                ),
                onPressed: () {},
                child: Text(
                  "About Us",
                  style: primaryText.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: cYellow,
                  shadowColor: Colors.grey,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Text(
                  "Login",
                  style: primaryText.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
          ]),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              HomeHeader(),
              HomeDivisionWidget(),
              HomeEventWidget(),
              HomeContactWIdget(),
              AboutUsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
