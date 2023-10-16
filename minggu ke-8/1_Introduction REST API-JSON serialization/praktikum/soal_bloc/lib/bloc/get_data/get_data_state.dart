part of 'get_data_cubit.dart';

sealed class GetDataState extends Equatable {
  const GetDataState();

  @override
  List<Object> get props => [];
}

final class GetDataInitial extends GetDataState {}

final class GetDataLoading extends GetDataState {}

final class GetDataSuccess extends GetDataState {
  final DataModel data;

  GetDataSuccess(this.data);

  @override
  List<Object> get props => [data];
}
