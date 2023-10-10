import 'package:flutter/material.dart';
import 'package:soal_prioritas1/utils/theme.dart';

class GaleriDetail extends StatelessWidget {
  GaleriDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Detail Galeri",
        ),
        backgroundColor: lightPurple,
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(args))),
          )
        ],
      ),
    );
  }
}
