import 'package:code_comppetance2/themes.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(30, 0, 30, 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Image.asset(
          'assets/sircle.png',
          width: 100,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome Back,",
              style: primaryText.copyWith(
                  fontSize: 20, fontWeight: FontWeight.bold),
            ),
            RichText(
                text: TextSpan(
                    text: "Member",
                    style: greyText.copyWith(fontWeight: FontWeight.bold),
                    children: [
                  TextSpan(
                      text: " Sircle",
                      style: yellowText.copyWith(fontWeight: FontWeight.bold))
                ]))
          ],
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
      ]),
    );
  }
}
