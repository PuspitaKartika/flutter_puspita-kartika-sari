import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soal_prioritas1/bloc/contact/contact_cubit.dart';
import 'package:soal_prioritas1/view/galeri/galeri_detail.dart';
import 'package:soal_prioritas1/view/galeri/galeri_page.dart';
import 'package:soal_prioritas1/view/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ContactCubit(),
        ),
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          initialRoute: '/home',
          routes: {
            '/home': (context) => const HomePage(),
            '/galeri': (context) => const GaleriPage(),
            '/detailGaleri': (context) => GaleriDetail(),
          }),
    );
  }
}
