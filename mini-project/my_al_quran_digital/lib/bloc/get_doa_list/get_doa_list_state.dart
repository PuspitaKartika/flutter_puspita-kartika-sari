part of 'get_doa_list_cubit.dart';

class GetDoaListState extends Equatable {
  const GetDoaListState();

  @override
  List<Object> get props => [];
}

class GetDoaListInitial extends GetDoaListState {}

class GetDoaListLoading extends GetDoaListState {}

class GetDoaListSuccess extends GetDoaListState {
  final List<DoaModel> data;

  const GetDoaListSuccess({required this.data});

  @override
  List<Object> get props => [data];
}

class GetDoaListFailure extends GetDoaListState {
  final String msg;

  const GetDoaListFailure({required this.msg});

  @override
  List<Object> get props => [msg];
}
