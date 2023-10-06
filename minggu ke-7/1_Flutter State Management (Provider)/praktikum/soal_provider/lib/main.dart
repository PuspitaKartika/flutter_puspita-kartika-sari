import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:soal_prioritas1/provider/button_submit_change_notifier.dart';
import 'package:soal_prioritas1/provider/form_name_provider.dart';
import 'package:soal_prioritas1/view/galeri/galeri_detail.dart';
import 'package:soal_prioritas1/view/galeri/galeri_page.dart';
import 'package:soal_prioritas1/view/home/home_page.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => ButtonSubmitChangeNotifier()),
      ChangeNotifierProvider(create: (_) => FormNameProvider())
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        });
  }
}
