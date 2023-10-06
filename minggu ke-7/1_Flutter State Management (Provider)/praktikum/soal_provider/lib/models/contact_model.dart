import 'package:flutter/material.dart';

class ContactModel {
  final String name;
  final String no;
  final DateTime tanggal;
  final Color color;
  final String file;

  ContactModel(
      {required this.name,
      required this.no,
      required this.tanggal,
      required this.color,
      required this.file});
}
