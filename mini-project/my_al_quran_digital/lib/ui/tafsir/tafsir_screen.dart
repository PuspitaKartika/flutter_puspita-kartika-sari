import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_al_quran_digital/bloc/get_tafsir/get_tafsir_cubit.dart';
import 'package:my_al_quran_digital/theme.dart';

class TafsirScreem extends StatefulWidget {
  final int id;
  const TafsirScreem({super.key, required this.id});

  @override
  State<TafsirScreem> createState() => _TafsirScreemState();
}

class _TafsirScreemState extends State<TafsirScreem> {
  @override
  void initState() {
    super.initState();
    context.read<GetTafsirCubit>().fetchTafsir(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: bgColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Tafsir",
          style:
              primaryText.copyWith(fontWeight: FontWeight.bold, fontSize: 14),
        ),
      ),
      body: BlocBuilder<GetTafsirCubit, GetTafsirState>(
          builder: (context, state) {
        if (state is GetTafsirLoading) {
          return const CircularProgressIndicator();
        } else if (state is GetTafsirFailure) {
          return Center(
            child: Text(state.msg),
          );
        } else if (state is GetTafsirSuccess) {
          final item = state.data;
          return ListView.builder(
              itemCount: item.tafsir?.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(1, 1),
                            color: borderColor.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 2)
                      ],
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          image: AssetImage("assets/blur.png"),
                          fit: BoxFit.cover)),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: const EdgeInsets.only(right: 10),
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Text(
                            item.tafsir![index].ayat.toString(),
                            style: primaryText,
                          )),
                      Flexible(
                          child: Text(
                        item.tafsir![index].teks,
                        style: primaryText,
                      )),
                    ],
                  ),
                );
              });
        }
        return const SizedBox();
      }),
    );
  }
}
