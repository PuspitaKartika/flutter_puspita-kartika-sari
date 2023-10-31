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
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text("tes"),
            BlocBuilder<GetSurahByIdCubit, GetSurahByIdState>(
                builder: (context, state) {
              if (state is GetSurahByIdLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is GetSurahByIdFailure) {
                return Text(state.msg);
              } else if (state is GetSurahByIdSuccess) {
                return Text(state.murotal.first);
              }
              return const SizedBox();
            })
          ],
        ),
      ),
    );
  }
}
