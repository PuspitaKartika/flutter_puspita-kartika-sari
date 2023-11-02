import 'package:flutter/material.dart';
import 'package:my_al_quran_digital/ui/al-quran/audio_alquran_screen.dart';
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
        decoration: BoxDecoration(
            border: Border.all(color: borderColor, width: 2),
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
                image: AssetImage("assets/blur2.png"), fit: BoxFit.cover)),
        child: ListTile(
          leading: Image.asset(
            "assets/quran.png",
            height: 40,
          ),
          title: Text(
            "${item.namaLatin}, (${item.arti} )",
            style:
                primaryText.copyWith(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            "${item.tempatTurun} || ${item.jumlahAyat} ayat",
          ),
          trailing: Container(
            decoration: const BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.play_arrow,
                  size: 30,
                  color: primaryColor,
                )),
          ),
        ),
      ),
    );
  }
}
