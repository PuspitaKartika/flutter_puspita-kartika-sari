import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_al_quran_digital/bloc/get_all_country/get_all_country_cubit.dart';
import 'package:my_al_quran_digital/bloc/get_all_surah/get_all_surah_cubit.dart';
import 'package:my_al_quran_digital/bloc/get_country_by_id/get_country_by_id_cubit.dart';
import 'package:my_al_quran_digital/bloc/get_doa_by_id/get_doa_byid_cubit.dart';
import 'package:my_al_quran_digital/bloc/get_doa_list/get_doa_list_cubit.dart';
import 'package:my_al_quran_digital/bloc/get_jadwal_solat/get_jadwal_solat_cubit.dart';
import 'package:my_al_quran_digital/bloc/get_surah_by_id/get_surah_by_id_cubit.dart';
import 'package:my_al_quran_digital/bloc/get_tafsir/get_tafsir_cubit.dart';
import 'package:my_al_quran_digital/dasboard.dart';
import 'package:my_al_quran_digital/feature/al-quran/alquran_screen.dart';
import 'package:my_al_quran_digital/feature/doa/doa_screen.dart';
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
        BlocProvider(create: (_) => GetSurahByIdCubit()),
        BlocProvider(create: (_) => GetDoaListCubit()),
        BlocProvider(create: (_) => GetDoaByidCubit()),
        BlocProvider(create: (_) => GetTafsirCubit()),
        BlocProvider(create: (_) => GetAllCountryCubit()),
        BlocProvider(create: (_) => GetJadwalSolatCubit()),
        BlocProvider(create: (_) => GetCountryByIdCubit())
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
            '/doa': (context) => const DoaScreen(),
          }),
    );
  }
}
