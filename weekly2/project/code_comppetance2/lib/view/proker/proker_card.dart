import 'package:code_comppetance2/model/proker_model.dart';
import 'package:flutter/material.dart';

import '../../themes.dart';

// ignore: must_be_immutable
class ProkerCard extends StatelessWidget {
  ProkerModel? prokerValue;
  ProkerCard({this.prokerValue, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
        child: Column(
          children: [
            prokerValue!.icon!,
            const SizedBox(
              height: 10,
            ),
            Text(
              "${prokerValue!.name}",
              style: yellowText.copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              "${prokerValue!.desc}",
              style: primaryText.copyWith(fontSize: 12),
              overflow: TextOverflow.ellipsis,
              maxLines: 4,
            )
          ],
        ));
  }
}
