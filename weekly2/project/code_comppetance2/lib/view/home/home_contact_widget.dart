import 'package:code_comppetance2/themes.dart';
import 'package:flutter/material.dart';

class HomeContactWIdget extends StatefulWidget {
  const HomeContactWIdget({super.key});

  @override
  State<HomeContactWIdget> createState() => _HomeContactWIdgetState();
}

class _HomeContactWIdgetState extends State<HomeContactWIdget> {
  final nameEdc = TextEditingController();
  final emailEdc = TextEditingController();
  final messageEdc = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: cYellow.withOpacity(0.1)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Contact us",
            style:
                primaryText.copyWith(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "Need to get in touch with us? Either fill out the form with your inquiry or find the department email you’d like to contact below",
            style: primaryText,
          ),
          const SizedBox(
            height: 5,
          ),
          const SizedBox(
            height: 10,
          ),

          //name
          Text(
            "Name : ",
            style: primaryText,
          ),
          TextFormField(
            controller: nameEdc,
            decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                hintText: "contoh: Puspita",
                hintStyle: greyText,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: cYellow))),
          ),
          const SizedBox(
            height: 10,
          ),

          //email
          Text(
            "Email : ",
            style: primaryText,
          ),
          const SizedBox(
            height: 5,
          ),
          TextFormField(
            controller: emailEdc,
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null) {
                return "Email cannot be empty";
              } else if (value.isEmpty) {
                return "Email cannot be empty";
              } else if (!RegExp(
                      r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                  .hasMatch(value)) {
                return "Enter a valid Email";
              } else {
                return null;
              }
            },
            decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                hintText: "name@example.com",
                hintStyle: greyText,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: cYellow))),
          ),
          const SizedBox(
            height: 10,
          ),

          //message
          Text(
            "Message : ",
            style: primaryText,
          ),
          const SizedBox(
            height: 5,
          ),
          TextFormField(
            controller: messageEdc,
            maxLines: 4,
            decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                hintText: "Tuliskan pesan anda",
                hintStyle: greyText,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: cYellow))),
          ),
          const SizedBox(
            height: 10,
          ),

          //botton
          Center(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: cYellow),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (contex) {
                        return AlertDialog(
                          title: const Text("Pesan"),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Nama : ${nameEdc.text}"),
                              Text("Email : ${emailEdc.text}"),
                              Text("Pesan : ${messageEdc.text}")
                            ],
                          ),
                        );
                      });
                },
                child: Text(
                  "Submit",
                  style: primaryText.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                )),
          )
        ],
      ),
    );
  }
}
