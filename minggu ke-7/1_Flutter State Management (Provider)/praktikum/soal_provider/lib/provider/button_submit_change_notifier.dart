import 'package:flutter/material.dart';

import '../models/contact_model.dart';

class ButtonSubmitChangeNotifier with ChangeNotifier {
  final List<ContactModel> _contactModel = [];
  List<ContactModel> get contactModel => _contactModel;

  void addContact({
    required String name,
    required String no,
    required DateTime tanggal,
    required Color color,
    required String file,
  }) {
    _contactModel.add(ContactModel(
        name: name, no: no, tanggal: tanggal, color: color, file: file));
    notifyListeners();
  }

  void removeContact(int index) {
    _contactModel.removeAt(index);
    notifyListeners();
  }

  void updateContact(
    ContactModel? value,
    int index,
  ) {
    if (value != null) {
      final updateValue = value;
      contactModel[index] = updateValue;
    }
    notifyListeners();
  }
}
