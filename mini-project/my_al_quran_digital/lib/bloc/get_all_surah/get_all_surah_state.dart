part of 'get_all_surah_cubit.dart';

sealed class GetAllSurahState extends Equatable {
  const GetAllSurahState();

  @override
  List<Object> get props => [];
}

class GetAllSurahInitial extends GetAllSurahState {}

class GetAllSurahILoading extends GetAllSurahState {}

class GetAllSurahSuccess extends GetAllSurahState {
  final List<AlQuranModel> data;

  const GetAllSurahSuccess({required this.data});

  @override
  List<Object> get props => [data];
}
