part of 'add_user_cubit.dart';

@immutable
sealed class AddUserState {}

final class AddUserInitial extends AddUserState {}

final class AddUserLoading extends AddUserState {}

final class AddUserSucces extends AddUserState {
  final String msg;

  AddUserSucces(this.msg);

  @override
  List<Object> get props => [msg];
}

final class AddUserFailure extends AddUserState {
  final String msg;

  AddUserFailure(this.msg);

  @override
  List<Object> get props => [msg];
}
