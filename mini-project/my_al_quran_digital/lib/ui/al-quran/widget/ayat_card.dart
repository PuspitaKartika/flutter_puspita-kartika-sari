import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_al_quran_digital/bloc/get_tafsir/get_tafsir_cubit.dart';
import 'package:my_al_quran_digital/model/alquran_model.dart';
import 'package:my_al_quran_digital/theme.dart';

class AyatCard extends StatefulWidget {
  final AyatModel item;
  final int index;
  const AyatCard({super.key, required this.item, required this.index});

  @override
  State<AyatCard> createState() => _AyatCardState();
}

class _AyatCardState extends State<AyatCard> {
  @override
  void initState() {
    super.initState();
    context.read<GetTafsirCubit>().fetchTafsir(widget.index);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    color: Colors.white, shape: BoxShape.circle),
                child: Text(
                  widget.item.noAyat.toString(),
                  style: secondaryText.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Flexible(
                child: Text(
                  textAlign: TextAlign.end,
                  widget.item.teksArab,
                  style: TextStyle(
                    fontSize: 20,
                    color: secondaryColor,
                  ),
                ),
              )
            ],
          ),
          Text(
            widget.item.teksLatin,
            style:
                TextStyle(fontWeight: FontWeight.bold, color: secondaryColor),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            widget.item.teksIndonesia,
            style: secondaryText.copyWith(fontStyle: FontStyle.italic),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor: bgColor,
                            title: Text(
                              "Tafsir ayat ke-${widget.index + 1}",
                              style: primaryText,
                            ),
                            content: SingleChildScrollView(
                              child:
                                  BlocBuilder<GetTafsirCubit, GetTafsirState>(
                                      builder: (context, state) {
                                if (state is GetTafsirFailure) {
                                  return Text(state.msg);
                                } else if (state is GetTafsirLoading) {
                                  return const Center(
                                      child: CircularProgressIndicator());
                                } else if (state is GetTafsirSuccess) {
                                  return Text(
                                    textAlign: TextAlign.justify,
                                    state.data.tafsir![widget.index].teks,
                                    style: primaryText,
                                  );
                                }
                                return const SizedBox();
                              }),
                            ),
                          );
                        });
                  },
                  child: Text(
                    "Tafsir",
                    style: primaryText.copyWith(
                        fontStyle: FontStyle.italic,
                        decoration: TextDecoration.underline,
                        decorationThickness: 1,
                        fontSize: 12,
                        color: borderColor,
                        fontWeight: FontWeight.bold),
                  )),
            ],
          ),
          const Divider()
        ],
      ),
    );
  }
}
