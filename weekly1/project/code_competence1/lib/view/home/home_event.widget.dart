import 'package:code_competence1/themes.dart';
import 'package:flutter/material.dart';

class HomeEventWidget extends StatelessWidget {
  const HomeEventWidget({super.key});

  Widget event() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: cYellow),
        color: Colors.white,
      ),
      child: Row(children: [
        Image.asset(
          "assets/poster.png",
          width: 70,
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "SIRCLE NO LIMITS",
              style: yellowText.copyWith(
                  fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text(
              "Hari/Tanggal : Sabtu, 23 Sep 2023",
              style: primaryText,
            ),
            const Text("Pukul : 09.00 WIB"),
            const Text("Tempat : REK-203")
          ],
        )
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Event",
            style:
                primaryText.copyWith(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          event(),
          event()
        ],
      ),
    );
  }
}
