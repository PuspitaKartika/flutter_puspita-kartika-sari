part of 'get_tafsir_cubit.dart';

class GetTafsirState extends Equatable {
  const GetTafsirState();

  @override
  List<Object> get props => [];
}

class GetTafsirInitial extends GetTafsirState {}

class GetTafsirLoading extends GetTafsirState {}

class GetTafsirSuccess extends GetTafsirState {
  final AlQuranModel data;

  const GetTafsirSuccess({required this.data});

  @override
  List<Object> get props => [data];
}

class GetTafsirFailure extends GetTafsirState {
  final String msg;

  const GetTafsirFailure({required this.msg});

  @override
  List<Object> get props => [msg];
}
