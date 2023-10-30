import 'package:flutter/material.dart';
import 'package:my_al_quran_digital/model/jadwal_sholat_model.dart';
import 'package:my_al_quran_digital/theme.dart';

class JadwalWidget extends StatelessWidget {
  final JadwalSolatModel item;
  const JadwalWidget({super.key, required this.item});

  Widget card(String query, String value) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              query,
              style: primaryText,
            ),
            const Expanded(child: SizedBox()),
            Text(
              value,
              style: primaryText,
            ),
            const SizedBox(
              width: 10,
            ),
            Icon(
              Icons.alarm,
              color: borderColor,
            )
          ],
        ),
        Divider(
          color: borderColor.withOpacity(0.5),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
              image: AssetImage("assets/blur.png"), fit: BoxFit.cover)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Jadwal Sholat",
          style: primaryText.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        card("Tanggal", item.tanggal),
        card("Imsak", item.imsak),
        card("Subuh", item.subuh),
        card("Terbit", item.terbit),
        card("Dhuha", item.dhuha),
        card("Dzuhur", item.dzuhur),
        card("Ashar", item.ashar),
        card("Magrib", item.magrib),
        card("Isya", item.isya)
      ]),
    );
  }
}
