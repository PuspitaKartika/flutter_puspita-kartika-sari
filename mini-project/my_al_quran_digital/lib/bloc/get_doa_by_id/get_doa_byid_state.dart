part of 'get_doa_byid_cubit.dart';

sealed class GetDoaByidState extends Equatable {
  const GetDoaByidState();

  @override
  List<Object> get props => [];
}

final class GetDoaByidInitial extends GetDoaByidState {}

final class GetDoaByidLoading extends GetDoaByidState {}

final class GetDoaByidSuccess extends GetDoaByidState {
  final DoaModel data;

  const GetDoaByidSuccess({required this.data});

  @override
  List<Object> get props => [data];
}

final class GetDoaByidFailure extends GetDoaByidState {
  final String msg;

  const GetDoaByidFailure({required this.msg});

  @override
  List<Object> get props => [msg];
}
