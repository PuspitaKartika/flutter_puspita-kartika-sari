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
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Text(item.nomor.toString()),
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.namaLatin,
                      style: primaryText.copyWith(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text("${item.tempatTurun} || ${item.jumlahAyat} ayat"),
                  ],
                ),
                const Expanded(child: SizedBox()),
                Text(
                  item.nama,
                  style: primaryText.copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              color: primaryColor.withOpacity(0.2),
            ),
          ],
        ),
      ),
    );
  }
}
