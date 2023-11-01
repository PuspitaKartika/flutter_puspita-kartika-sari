import 'package:flutter/material.dart';
import 'package:my_al_quran_digital/theme.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final GlobalKey<FormState> _fromKey = GlobalKey<FormState>();
  final nameEcd = TextEditingController();
  final emailEcd = TextEditingController();
  bool isButtonDisabled = true;

  @override
  void initState() {
    super.initState();
    nameEcd.addListener(validateFields);
    emailEcd.addListener(validateFields);
  }

  void validateFields() {
    setState(() {
      isButtonDisabled = !(_fromKey.currentState?.validate() ?? false) ||
          nameEcd.text.isEmpty ||
          emailEcd.text.isEmpty;
    });
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
            Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.person, size: 40, color: borderColor2),
            ),
            const SizedBox(
              height: 40,
            ),
            Form(
              key: _fromKey,
              child: Column(
                children: [
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Nama tidak boleh kosong';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      label: const Text("Nama : "),
                      hintText: 'ex: Puspita',
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.all(10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    style: primaryText,
                    controller: nameEcd,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'email tidak boleh kosong';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      label: const Text("Email : "),
                      hintText: 'ex: Puspita@example.com',
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.all(10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    style: primaryText,
                    controller: emailEcd,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: isButtonDisabled
                  ? null
                  : () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(
                                  Icons.check,
                                  color: Colors.green,
                                  size: 100,
                                ),
                                Text(
                                  "Selamat, sekarang anda adalah member",
                                  textAlign: TextAlign.center,
                                  style: primaryText,
                                )
                              ],
                            ),
                          );
                        },
                      );
                    },
              child: const Text("Daftar Member"),
            )
          ],
        ),
      ),
    );
  }
}
