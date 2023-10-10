part of 'contact_cubit.dart';

abstract class ContactState extends Equatable {
  const ContactState();

  @override
  List<Object> get props => [];
}

final class ContactInitial extends ContactState {}

class ContactLoading extends ContactState {}

// ignore: must_be_immutable
class ContactSuccess extends ContactState {
  late List<ContactModel> data;

  ContactSuccess({required this.data});
  @override
  List<Object> get props => [data];
}

class ContactFailure extends ContactState {
  final String msg;

  const ContactFailure(this.msg);

  @override
  List<Object> get props => [msg];
}
