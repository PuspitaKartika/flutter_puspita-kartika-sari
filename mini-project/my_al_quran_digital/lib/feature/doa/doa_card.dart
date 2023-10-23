import 'package:flutter/material.dart';
import 'package:my_al_quran_digital/feature/doa/doa_id_screen.dart';
import 'package:my_al_quran_digital/model/doa_model.dart';
import 'package:my_al_quran_digital/theme.dart';

class DoaCard extends StatelessWidget {
  final DoaModel item;
  const DoaCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DoaIdScreen(
                      id: item.id,
                    )));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                offset: const Offset(1, 1),
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 2,
                spreadRadius: 2,
              ),
            ],
            border: Border.all(color: borderColor),
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
                image: AssetImage("assets/blur2.png"), fit: BoxFit.cover)),
        child: Row(
          children: [
            Container(
                margin: const EdgeInsets.only(right: 10),
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    color: Colors.white, shape: BoxShape.circle),
                child: Text(item.id.toString())),
            Flexible(
              child: Text(
                item.nama ?? "",
                style: primaryText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
