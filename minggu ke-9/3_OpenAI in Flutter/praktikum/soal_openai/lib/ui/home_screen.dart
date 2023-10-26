import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soal_openai/bloc/get_recomendation_phone/get_recomendation_phone_cubit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final budgetEcd = TextEditingController(text: "2005000");
  final storageEcd = TextEditingController(text: "64");
  final cameraEcd = TextEditingController(text: "8");

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Phone Recomendation"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: budgetEcd,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(label: Text("Budget (RP)")),
            ),
            TextField(
              controller: storageEcd,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(label: Text("Storage (GB)")),
            ),
            TextField(
              controller: cameraEcd,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(label: Text("Kamera (MP)")),
            ),
            FilledButton(
                onPressed: () {
                  context.read<GetRecomendationPhoneCubit>().getRecomendation(
                      budget: budgetEcd.text,
                      camera: cameraEcd.text,
                      storage: storageEcd.text);
                },
                child: const Text("Generate")),
            BlocBuilder<GetRecomendationPhoneCubit, GetRecomendationPhoneState>(
                builder: (context, state) {
              if (state is GetRecomendationPhoneLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is GetRecomendationPhoneFailure) {
                return Center(
                  child: Text(state.msg),
                );
              } else if (state is GetRecomendationPhoneSuccess) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Result",
                      style: TextStyle(fontSize: 28),
                    ),
                    const SizedBox(height: 8),
                    Text(state.result),
                  ],
                );
              }
              return const SizedBox();
            })
          ],
        ),
      ),
    );
  }
}
