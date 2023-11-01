import 'package:flutter/material.dart';
import 'package:my_al_quran_digital/feature/al-quran/surah_byId_screen.dart';
import 'package:my_al_quran_digital/model/alquran_model.dart';
import 'package:my_al_quran_digital/theme.dart';

class AlQuranCard extends StatelessWidget {
  final AlQuranModel item;
  const AlQuranCard({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SurahByIdScreen(id: item.nomor)));
      },
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
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
            child: ListTile(
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    color: Colors.white, shape: BoxShape.circle),
                child: Text(item.nomor.toString()),
              ),
              title: Text(
                item.namaLatin,
                style: primaryText.copyWith(
                    fontSize: 16, fontWeight: FontWeight.bold),
              ),
              subtitle: Text("${item.tempatTurun} || ${item.jumlahAyat} ayat"),
              trailing: Text(
                item.nama,
                style: primaryText.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
