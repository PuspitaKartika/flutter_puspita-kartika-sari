import 'package:code_comppetance2/themes.dart';
import 'package:flutter/material.dart';

class HomeDivisionWidget extends StatelessWidget {
  const HomeDivisionWidget({super.key});

  Widget divisi(String imagePath, String name) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: cYellow),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    offset: const Offset(1, 1),
                    color: cBlack.withOpacity(0.25),
                    blurRadius: 4,
                    spreadRadius: 2),
              ]),
          child: Image.asset(
            "assets/$imagePath",
            //fit: BoxFit.cover,
          ),
        ),
        Text(
          "$name",
          style: yellowText.copyWith(fontWeight: FontWeight.bold),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Our DIvision",
            style:
                primaryText.copyWith(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              divisi("rplm.png", "RPLM"),
              divisi("ai.png", "AI"),
              divisi("ti.png", "TI"),
              divisi("tkse.png", "TKSE")
            ],
          ),
        ],
      ),
    );
  }
}
