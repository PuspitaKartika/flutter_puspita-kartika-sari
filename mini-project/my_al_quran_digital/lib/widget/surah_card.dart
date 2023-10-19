import 'package:flutter/material.dart';
import 'package:my_al_quran_digital/theme.dart';

class SurahCard extends StatelessWidget {
  const SurahCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: borderColor, width: 3),
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
              image: AssetImage("assets/blur2.png"), fit: BoxFit.cover)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "assets/quran.png",
            height: 80,
          ),
          Column(
            children: [
              Text(
                "Al - Fatihah",
                style: primaryText.copyWith(
                    fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const Text("Arti : Pembuka"),
              const Text("Tempat Turun: Mekah"),
              const Text("Jumlah : 7 ayat"),
            ],
          ),
          Container(
            decoration: const BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.play_arrow,
                  size: 30,
                  color: primaryColor,
                )),
          )
        ],
      ),
    );
  }
}
