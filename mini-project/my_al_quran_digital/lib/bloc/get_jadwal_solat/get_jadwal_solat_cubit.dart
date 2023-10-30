import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_al_quran_digital/repositories/jadwal_solat_repo.dart';

import '../../model/jadwal_sholat_model.dart';

part 'get_jadwal_solat_state.dart';

class GetJadwalSolatCubit extends Cubit<GetJadwalSolatState> {
  GetJadwalSolatCubit() : super(GetJadwalSolatInitial());
  final _repo = JadwalSolatRepo();

  void fetchJadwalSolat({required int id, required String tanggal}) async {
    emit(GetJadwalSolatLoading());
    try {
      final data = await _repo.getJadwalSolat(id: id, tanggal: tanggal);
      emit(GetJadwalSolatSuccess(data: data));
    } catch (e) {
      emit(GetJadwalSolatFailure(msg: e.toString()));
    }
  }
}
