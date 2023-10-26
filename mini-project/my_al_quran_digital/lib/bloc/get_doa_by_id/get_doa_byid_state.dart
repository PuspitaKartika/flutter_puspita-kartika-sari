part of 'get_doa_byid_cubit.dart';

class GetDoaByidState extends Equatable {
  const GetDoaByidState();

  @override
  List<Object> get props => [];
}

class GetDoaByidInitial extends GetDoaByidState {}

class GetDoaByidLoading extends GetDoaByidState {}

class GetDoaByidSuccess extends GetDoaByidState {
  final DoaModel data;

  const GetDoaByidSuccess({required this.data});

  @override
  List<Object> get props => [data];
}

class GetDoaByidFailure extends GetDoaByidState {
  final String msg;

  const GetDoaByidFailure({required this.msg});

  @override
  List<Object> get props => [msg];
}
