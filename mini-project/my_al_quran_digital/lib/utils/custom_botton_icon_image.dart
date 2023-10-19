import 'package:flutter/material.dart';
import 'package:my_al_quran_digital/theme.dart';

class CustomButtonIconImage extends StatelessWidget {
  final Function() onTap;
  final String iconImage;
  final String text;

  const CustomButtonIconImage(
      {super.key,
      required this.onTap,
      required this.iconImage,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 80,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            offset: const Offset(1, 1),
            color: borderColor.withOpacity(0.3),
            blurRadius: 2,
            spreadRadius: 2,
          ),
        ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Image.asset(
              "assets/$iconImage",
              width: 24,
            ),
            Text(
              text,
              style: primaryText.copyWith(
                  fontSize: 12, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
