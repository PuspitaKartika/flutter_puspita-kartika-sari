import 'package:contacts/utils/theme.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final String name;
  final TextInputType? keyboardType;
  final Function(String)? onCanged;
  const CustomTextField(
      {Key? key,
      required this.controller,
      this.hintText,
      required this.name,
      this.keyboardType,
      this.onCanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextFormField(
        keyboardType: keyboardType,
        controller: controller,
        decoration: InputDecoration(
            filled: true,
            fillColor: primaryColor,
            label: Text(
              name,
            ),
            labelStyle: secondTextStyle,
            hintText: hintText,
            hintStyle: secondTextStyle),
        onChanged: onCanged,
      ),
    );
  }
}
