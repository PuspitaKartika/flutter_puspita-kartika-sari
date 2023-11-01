import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_al_quran_digital/bloc/get_surah_by_id/get_surah_by_id_cubit.dart';

class MurotalScreen extends StatefulWidget {
  const MurotalScreen({super.key});

  @override
  State<MurotalScreen> createState() => _MurotalScreenState();
}

class _MurotalScreenState extends State<MurotalScreen> {
  @override
  void initState() {
    super.initState();
    context.read<GetSurahByIdCubit>().fectSurahById(1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
