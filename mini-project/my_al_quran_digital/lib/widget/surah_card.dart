import 'package:flutter/material.dart';
import 'package:my_al_quran_digital/feature/al-quran/audio_alquran_screen.dart';
import 'package:my_al_quran_digital/model/alquran_model.dart';
import 'package:my_al_quran_digital/theme.dart';

class SurahCard extends StatelessWidget {
  final AlQuranModel item;
  const SurahCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => AudioAlquranScreen(id: item.nomor)));
      },
      child: Container(
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
              height: 40,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      item.namaLatin,
                      style: primaryText.copyWith(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " (${item.arti} )",
                      style: primaryText,
                    ),
                  ],
                ),
                Text("${item.tempatTurun} || ${item.jumlahAyat} ayat"),
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
      ),
    );
  }
}
