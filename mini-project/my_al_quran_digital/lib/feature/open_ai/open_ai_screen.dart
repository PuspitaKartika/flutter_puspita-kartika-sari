import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_al_quran_digital/bloc/get_open_ai/get_open_ai_cubit.dart';
import 'package:my_al_quran_digital/theme.dart';

class OpenAiScreen extends StatefulWidget {
  const OpenAiScreen({super.key});

  @override
  State<OpenAiScreen> createState() => _OpenAiScreenState();
}

class _OpenAiScreenState extends State<OpenAiScreen> {
  TextEditingController aiEcd = TextEditingController();
  String? pertanyaan;
  Widget text(String text) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Text(
        "Pertanyaan : $text",
        style: primaryText,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    aiEcd = TextEditingController();
  }

  @override
  void dispose() {
    aiEcd.dispose();
    super.dispose();
  }

  void reset() {
    aiEcd.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Image.asset(
              "assets/header.png",
              height: 150,
            ),
            Text(
              "Welcome to Quranic Insight",
              style: primaryText.copyWith(
                  fontSize: 28, fontWeight: FontWeight.bold),
            ),
            Column(
              children: [
                BlocBuilder<GetOpenAiCubit, GetOpenAiState>(
                    builder: (context, state) {
                  if (state is GetOpenAiLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (state is GetOpenAiFailure) {
                    return Text(state.msg);
                  } else if (state is GetOpenAiSuccess) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text(pertanyaan ?? ""),
                        Text(
                          "Jawaban : ",
                          style:
                              primaryText.copyWith(fontWeight: FontWeight.bold),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(
                                  image: AssetImage("assets/blur.png"),
                                  fit: BoxFit.cover)),
                          child: Text(state.data),
                        ),
                      ],
                    );
                  }
                  return const SizedBox();
                })
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(10),
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                  controller: aiEcd,
                  decoration: InputDecoration(
                    hintText: 'Tuliskan pertanyaan',
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.all(10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  style: primaryText),
            ),
            IconButton(
                onPressed: () {
                  pertanyaan = aiEcd.text;
                  context.read<GetOpenAiCubit>().fetchOpenAi(aiEcd.text);
                  reset();
                },
                icon: const Icon(Icons.send))
          ],
        ),
      ),
    );
  }
}
