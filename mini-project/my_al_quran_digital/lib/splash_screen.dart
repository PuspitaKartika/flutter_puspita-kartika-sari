import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_al_quran_digital/theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    getInit();
    super.initState();
  }

  getInit() async {
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushNamed(context, '/dashboard'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/bg1.png",
                ),
                fit: BoxFit.cover)),
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
                border: Border.all(color: borderColor, width: 5),
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                    image: AssetImage("assets/blur.png"), fit: BoxFit.cover)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  "assets/quran.png",
                  width: 110,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "My Al-Quran\nDigital",
                  textAlign: TextAlign.center,
                  style: primaryText.copyWith(
                    fontSize: 28,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "“Terima kasih sudah \ningat dengan ku”",
                  textAlign: TextAlign.center,
                  style: primaryText.copyWith(fontSize: 16),
                )
              ],
            ),
          ),
        ),
      
      ),
    );
  }
}
