import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:soal_prioritas2/bloc/cubit/getimage_cubit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final nameEcd = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Generator"),
      ),
      body: Column(children: [
        BlocBuilder<GetimageCubit, GetimageState>(
          builder: (context, state) {
            if (state is GetimageInitial) {
              return const Icon(
                Icons.image,
                size: 100,
              );
            }
            if (state is GetimageSuccess) {
              return SvgPicture.string(
                state.data,
                width: 100,
              );
            }
            if (state is GetimageFailure) {
              return const Icon(
                Icons.image,
                size: 100,
              );
            }
            return Container();
          },
        ),
        Padding(
          padding: const EdgeInsets.all(30),
          child: TextFormField(
            controller: nameEcd,
            decoration: const InputDecoration(
                hintText: "Input text", labelText: "Name"),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            context.read<GetimageCubit>().fetchImage(nameEcd.text);
          },
          child: const Text("Generate"),
        )
      ]),
    );
  }
}
