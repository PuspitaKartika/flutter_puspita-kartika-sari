import 'package:flutter/material.dart';
import 'package:my_al_quran_digital/model/alquran_model.dart';
import 'package:my_al_quran_digital/theme.dart';

class AyatCard extends StatelessWidget {
  final AyatModel item;
  const AyatCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    color: Colors.white, shape: BoxShape.circle),
                child: Text(
                  item.noAyat.toString(),
                  style: secondaryText.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Flexible(
                child: Text(
                  textAlign: TextAlign.end,
                  item.teksArab,
                  style: TextStyle(
                    fontSize: 20,
                    color: secondaryColor,
                  ),
                ),
              )
            ],
          ),
          Text(
            item.teksLatin,
            style:
                TextStyle(fontWeight: FontWeight.bold, color: secondaryColor),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            item.teksIndonesia,
            style: secondaryText.copyWith(fontStyle: FontStyle.italic),
          ),
          const Divider()
        ],
      ),
    );
  }
}
