part of 'get_doa_list_cubit.dart';

sealed class GetDoaListState extends Equatable {
  const GetDoaListState();

  @override
  List<Object> get props => [];
}

final class GetDoaListInitial extends GetDoaListState {}

final class GetDoaListLoading extends GetDoaListState {}

final class GetDoaListSuccess extends GetDoaListState {
  final List<DoaModel> data;

  const GetDoaListSuccess({required this.data});

  @override
  List<Object> get props => [data];
}

final class GetDoaListFailure extends GetDoaListState {
  final String msg;

  const GetDoaListFailure({required this.msg});

  @override
  List<Object> get props => [msg];
}
