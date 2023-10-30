import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_al_quran_digital/model/country_model.dart';
import 'package:my_al_quran_digital/repositories/jadwal_solat_repo.dart';

part 'get_all_country_state.dart';

class GetAllCountryCubit extends Cubit<GetAllCountryState> {
  GetAllCountryCubit() : super(GetAllCountryInitial());
  final _repo = JadwalSolatRepo();

  void fetchAllCountry() async {
    emit(GetAllCountryLoading());
    try {
      final data = await _repo.getAllCountry();
      emit(GetAllCountrySuccess(data: data));
    } catch (e) {
      emit(GetAllCountryFailure(msg: e.toString()));
    }
  }
}
