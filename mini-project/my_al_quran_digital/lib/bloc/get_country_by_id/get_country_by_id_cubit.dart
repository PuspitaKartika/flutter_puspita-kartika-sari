import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_al_quran_digital/model/country_model.dart';
import 'package:my_al_quran_digital/repositories/jadwal_solat_repo.dart';

part 'get_country_by_id_state.dart';

class GetCountryByIdCubit extends Cubit<GetCountryByIdState> {
  GetCountryByIdCubit() : super(GetCountryByIdInitial());
  final _repo = JadwalSolatRepo();

  void fetchBy(
    int id,
  ) async {
    emit(GetCountryByIdLoading());
    try {
      final data = await _repo.getCountryById(id: id);
      emit(GetCountryByIdSuccess(data: data));
    } catch (e) {
      emit(GetCountryByIdFailure(msg: e.toString()));
    }
  }
}
