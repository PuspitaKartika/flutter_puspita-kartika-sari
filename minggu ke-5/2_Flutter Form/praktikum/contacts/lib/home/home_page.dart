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
            CustomTextField(
              controller: nameEdc,
              name: "Nama",
              hintText: "Insert Your Name",
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextField(
              controller: noHpEdc,
              name: "Nomor",
              hintText: "+62 ....",
            ),
            const SizedBox(
              height: 15,
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
                    color: Colors.lightBlue.shade100),
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
