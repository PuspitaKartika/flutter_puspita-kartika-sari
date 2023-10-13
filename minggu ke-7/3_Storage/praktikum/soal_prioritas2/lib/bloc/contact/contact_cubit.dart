import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../../models/contact_model.dart';

part 'contact_state.dart';

class ContactCubit extends Cubit<ContactState> {
  ContactCubit() : super(ContactInitial());

  List<ContactModel> data = [];

  void addContact({
    required String name,
    required String no,
    required DateTime tanggal,
    required Color color,
    required String file,
  }) {
    emit(ContactInitial());
    data.add(ContactModel(
        name: name, no: no, tanggal: tanggal, color: color, file: file));
    emit(ContactLoading());
    Future.delayed(
        const Duration(seconds: 3), () => emit(ContactSuccess(data: data)));
  }

  void removeContact({required index}) {
    emit(ContactInitial());
    data.removeAt(index);
    if (data.isEmpty) {
      emit(ContactInitial());
    } else {
      emit(ContactSuccess(data: data));
    }
  }

  void updateContact({
    required index,
    required String name,
    required String no,
    required DateTime tanggal,
    required Color color,
    required String file,
  }) {
    emit(ContactInitial());
    data[index] = ContactModel(
        name: name, no: no, tanggal: tanggal, color: color, file: file);
    emit(ContactSuccess(data: data));
  }
}
