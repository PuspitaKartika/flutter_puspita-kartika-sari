import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_al_quran_digital/model/slider_model.dart';
import 'package:my_al_quran_digital/theme.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  int carouselIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
            items: slider
                .map((e) => Container(
                      decoration: BoxDecoration(
                          color: bgColor,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(e), fit: BoxFit.cover)),
                    ))
                .toList(),
            options: CarouselOptions(
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                  carouselIndex = index;
                });
              },
            )),
        const SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            slider.length,
            (index) => Container(
              height: 5,
              width: carouselIndex == index ? 30 : 5,
              margin: const EdgeInsets.only(right: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: carouselIndex == index
                    ? borderColor2
                    : const Color.fromARGB(255, 201, 197, 197),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
