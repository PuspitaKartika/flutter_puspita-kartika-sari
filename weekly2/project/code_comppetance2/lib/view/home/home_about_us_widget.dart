import 'package:code_comppetance2/themes.dart';
import 'package:code_comppetance2/view/proker/proker_list.dart';
import 'package:flutter/material.dart';

import '../proker/proker_card.dart';

class AboutUsWidget extends StatelessWidget {
  const AboutUsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Divider(),
        Text(
          "About Us",
          style:
              primaryText.copyWith(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "Sircle adalah organisasi mahasiswa independen yang dibentuk dengan maksud sebagai wadah pengembangan dan pengoptimalan mahasiswa di bidang riset dan pengembangan teknologi Fakultas Informatika Institut Teknologi Telkom Purwokerto.",
          style: primaryText.copyWith(),
          textAlign: TextAlign.justify,
        ),
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemCount: prokerList.length,
            itemBuilder: (context, index) {
              return ProkerCard(
                prokerValue: prokerList[index],
              );
            },
          ),
        ),
        const SizedBox(
          height: 20,
        )
      ]),
    );
  }
}
