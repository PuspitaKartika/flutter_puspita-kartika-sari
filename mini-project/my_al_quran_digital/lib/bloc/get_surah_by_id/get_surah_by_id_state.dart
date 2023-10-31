part of 'get_surah_by_id_cubit.dart';

class GetSurahByIdState extends Equatable {
  const GetSurahByIdState();

  @override
  List<Object> get props => [];
}

class GetSurahByIdInitial extends GetSurahByIdState {}

class GetSurahByIdLoading extends GetSurahByIdState {}

class GetSurahByIdSuccess extends GetSurahByIdState {
  final AlQuranModel data;
  final List<String> murotal;

  const GetSurahByIdSuccess(this.murotal, {required this.data});

  @override
  List<Object> get props => [data];
}

class GetSurahByIdFailure extends GetSurahByIdState {
  final String msg;

  const GetSurahByIdFailure({required this.msg});

  @override
  List<Object> get props => [msg];
}
