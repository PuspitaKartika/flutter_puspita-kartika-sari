part of 'update_data_dart_cubit.dart';

sealed class UpdateDataDartState extends Equatable {
  const UpdateDataDartState();

  @override
  List<Object> get props => [];
}

final class UpdateDataDartInitial extends UpdateDataDartState {}

final class UpdateDataDartLoading extends UpdateDataDartState {}

final class UpdateDataDartSuccess extends UpdateDataDartState {
  final String msg;

  UpdateDataDartSuccess(this.msg);

  @override
  List<Object> get props => [msg];
}
