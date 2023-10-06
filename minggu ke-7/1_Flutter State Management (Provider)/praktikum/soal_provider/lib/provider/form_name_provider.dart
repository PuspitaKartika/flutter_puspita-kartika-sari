import 'package:flutter/material.dart';

class FormNameProvider with ChangeNotifier {
  String _phoneValue = "";
  String get phoenValue => _phoneValue;

  String _nameValue = "";
  String get nameValue => _nameValue;

  String? _messageErrorNameValue;
  String? get messageErrorNameValue => _messageErrorNameValue;

  String? _messageErrorPhone = '';
  String? get messageErrorPhone => _messageErrorPhone;

  final TextEditingController _nameController = TextEditingController();
  TextEditingController get nameController => _nameController;

  final TextEditingController _phoneController = TextEditingController();
  TextEditingController get phoneController => _phoneController;

  void nameOnChanged(String value) {
    _nameValue = value;
    if (_nameValue.isEmpty) {
      _messageErrorNameValue = "Name Tidak Boleh Kosong";
    } else if (_nameValue.length <= 2) {
      _messageErrorNameValue = "Name Harus Lebih Dari 2 Kata";
    } else {
      _messageErrorNameValue = null;
    }
    notifyListeners();
  }

  void validationPhone(String value) {
    _phoneValue = value;
    if (_phoneValue.isEmpty) {
      _messageErrorPhone = "Nomor Telepon Tidak Boleh Kosng!";
    } else {
      _messageErrorPhone = null;
    }
    notifyListeners();
  }
}
