part of 'get_tafsir_cubit.dart';

sealed class GetTafsirState extends Equatable {
  const GetTafsirState();

  @override
  List<Object> get props => [];
}

final class GetTafsirInitial extends GetTafsirState {}

final class GetTafsirLoading extends GetTafsirState {}

final class GetTafsirSuccess extends GetTafsirState {
  final AlQuranModel data;

  const GetTafsirSuccess({required this.data});

  @override
  List<Object> get props => [data];
}

final class GetTafsirFailure extends GetTafsirState {
  final String msg;

  const GetTafsirFailure({required this.msg});

  @override
  List<Object> get props => [msg];
}
