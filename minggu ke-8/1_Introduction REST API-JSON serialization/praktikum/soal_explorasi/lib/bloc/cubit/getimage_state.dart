part of 'getimage_cubit.dart';

@immutable
sealed class GetimageState {}

final class GetimageInitial extends GetimageState {}

final class GetimageLoading extends GetimageState {}

class GetimageSuccess extends GetimageState {
  final String data;

  GetimageSuccess(this.data);
  List<Object> get props => [data];
}

class GetimageFailure extends GetimageState {}
