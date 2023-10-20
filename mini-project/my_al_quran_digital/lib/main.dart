import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_al_quran_digital/bloc/get_all_surah/get_all_surah_cubit.dart';
import 'package:my_al_quran_digital/bloc/get_surah_by)id/get_surah_by_id_cubit.dart';
import 'package:my_al_quran_digital/dasboard.dart';
import 'package:my_al_quran_digital/feature/al-quran/alquran_screen.dart';
import 'package:my_al_quran_digital/splash_screen.dart';

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
        BlocProvider(create: (_) => GetAllSurahCubit()),
        BlocProvider(create: (_) => GetSurahByIdCubit())
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => const SplashScreen(),
            '/dashboard': (context) => const Dasboard(),
            '/alquran': (context) => const AlQuranScreen(),
          }),
    );
  }
}
