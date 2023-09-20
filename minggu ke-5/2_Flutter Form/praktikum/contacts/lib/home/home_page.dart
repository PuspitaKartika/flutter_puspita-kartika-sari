import 'package:contacts/home/widget/contact_card.dart';
import 'package:contacts/home/widget/header_home.dart';
import 'package:contacts/utils/custom_textfield.dart';
import 'package:contacts/utils/theme.dart';
import 'package:flutter/material.dart';

import '../models/contact_model.dart';

List<ContactModel> contactList = [];

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

    final RegExp namePattern = RegExp(r"^[A-Z][a-zA-Z]*\s[A-Z][a-zA-Z]*$");

    if (!namePattern.hasMatch(value)) {
      return 'Invalid name format. tidak boleh ada karakter.';
    }

    return null;
  }

  String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Nomor tidak boleh kosong';
    }

    if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
      return 'number must contain only digits';
    }
    if (value.length < 8 || value.length > 15) {
      return 'number must be between 8 and 15 digits';
    }
    if (value[0] != '0') {
      return 'number must start with the digit 0';
    }

    return null;
  }

  void addContact() {
    contactList.add(ContactModel(name: nameEdc.text, no: noHpEdc.text));
    resetField();
    setState(() {});
  }

  void removeContact(int index) {
    contactList.removeAt(index);
    setState(() {});
  }

  void resetField() {
    nameEdc.clear();
    noHpEdc.clear();
  }

  void update(int index) {
    setState(() {
      contactList[index].name = nameEdc.text;
      contactList[index].no = noHpEdc.text;
      indexContact = index;
    });
  }

  @override
  void dispose() {
    nameEdc.dispose();
    noHpEdc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: lightPurple,
        title: Text(
          "Contact",
          style: primaryTextStyle.copyWith(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderHome(),
            Form(
              key: _formKey,
              child: Column(
                children: [
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
                    style:
                        ElevatedButton.styleFrom(backgroundColor: bottomColor),
                    onPressed: () {
                      if (indexContact == -1) {
                        addContact();
                      } else {
                        update(indexContact);
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
            Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: secondaryColor),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Text(
                      "List Contacts",
                      style: primaryTextStyle.copyWith(fontSize: 24),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: contactList.length,
                      itemBuilder: (context, index) => ContactCard(
                        name: contactList[index].name,
                        no: contactList[index].no,
                        onTapDelete: () {
                          removeContact(index);
                        },
                        onTapEdit: () {
                          setState(() {
                            nameEdc.text = contactList[index].name;
                            noHpEdc.text = contactList[index].no;
                            update(index);
                          });
                        },
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
