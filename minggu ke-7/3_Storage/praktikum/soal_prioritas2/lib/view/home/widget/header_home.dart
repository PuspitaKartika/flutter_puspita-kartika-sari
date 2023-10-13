import 'package:flutter/material.dart';

import '../../../utils/theme.dart';

// ignore: must_be_immutable
class HeaderHome extends StatelessWidget {
  String name;
  HeaderHome({required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 30, 40, 16),
      child: Column(
        children: [
          Text(
            "Selamat Datang $name",
            style: const TextStyle(
                fontSize: 20, color: Colors.amber, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 16,
          ),
          const Icon(Icons.phonelink_setup),
          const SizedBox(
            height: 16,
          ),
          Text(
            "Create New Contacts",
            style: primaryTextStyle.copyWith(
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
              "A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made. "),
          const SizedBox(
            height: 16,
          ),
          const Divider()
        ],
      ),
    );
  }
}
