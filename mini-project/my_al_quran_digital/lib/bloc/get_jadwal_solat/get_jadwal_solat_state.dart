part of 'get_jadwal_solat_cubit.dart';

sealed class GetJadwalSolatState extends Equatable {
  const GetJadwalSolatState();

  @override
  List<Object> get props => [];
}

final class GetJadwalSolatInitial extends GetJadwalSolatState {}

class GetJadwalSolatLoading extends GetJadwalSolatState {}

class GetJadwalSolatSuccess extends GetJadwalSolatState {
  final JadwalSolatModel data;

  const GetJadwalSolatSuccess({required this.data});
  @override
  List<Object> get props => [data];
}

class GetJadwalSolatFailure extends GetJadwalSolatState {
  final String msg;

  const GetJadwalSolatFailure({required this.msg});
  @override
  List<Object> get props => [msg];
}
