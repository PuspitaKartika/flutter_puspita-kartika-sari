import 'package:flutter/material.dart';

class ContactModel {
  String name;
  String no;
  DateTime tanggal;
  Color color;
  String file;

  ContactModel(
      {required this.name,
      required this.no,
      required this.tanggal,
      required this.color,
      required this.file});
}
