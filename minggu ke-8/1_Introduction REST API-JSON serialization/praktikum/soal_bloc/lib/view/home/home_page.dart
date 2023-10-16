import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soal_prioritas1/bloc/add_contact/add_user_cubit.dart';
import 'package:soal_prioritas1/model/user_no2.dart';

import '../../utils/custom_textfield.dart';
import '../../utils/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final nameEdc = TextEditingController();
  final noHpEdc = TextEditingController();
  int indexContact = -1;
  final _formKey = GlobalKey<FormState>();

  String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Nama tidak boleh kosong';
    }

    return null;
  }

  String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Nomor tidak boleh kosong';
    }

    if (value.length < 8 || value.length > 15) {
      return 'number must be between 8 and 15 digits';
    }

    return null;
  }

  void resetField() {
    nameEdc.clear();
    noHpEdc.clear();
  }

  @override
  void dispose() {
    nameEdc.dispose();
    noHpEdc.dispose();
    super.dispose();
  }

  void soal2() {
    Map<String, dynamic> jsonData = {
      "id": 2,
      "nama": "John Thor",
      "telepon": "0857676565688"
    };

    User2 user = User2.fromJson(jsonData);

    print(user.id); // 2
    print(user.nama); // "John Thor"
    print(user.telepon);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: lightPurple,
          title: Text(
            "Soal Prioritas 1",
            style: primaryTextStyle.copyWith(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const Text("No 1"),
                    CustomTextField(
                      validator: validateName,
                      controller: nameEdc,
                      name: "Nama",
                      hintText: "Insert Your Name",
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomTextField(
                      validator: validatePhoneNumber,
                      keyboardType: TextInputType.number,
                      controller: noHpEdc,
                      name: "Nomor",
                      hintText: "+62 ....",
                    ),
                    const SizedBox(
                      height: 15,
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: bottomColor),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          context
                              .read<AddUserCubit>()
                              .addUser(name: nameEdc.text, phone: noHpEdc.text);
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content:
                                      Text("Berhasil menambahkan contact")));
                          resetField();
                        }
                      },
                      child: Text(
                        "Submit",
                        style: primaryTextStyle.copyWith(color: Colors.white),
                      )),
                  const SizedBox(
                    width: 16,
                  )
                ],
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                const Text("Soal no 2"),
                ElevatedButton(
                    onPressed: () {
                      soal2();
                    },
                    child: const Text("Lihat terminal"))
              ])
            ],
          ),
        ));
  }
}
