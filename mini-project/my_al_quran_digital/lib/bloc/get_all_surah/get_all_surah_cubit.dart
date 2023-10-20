import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_al_quran_digital/model/alquran_model.dart';
import 'package:my_al_quran_digital/repositories/al_quran_repo.dart';

part 'get_all_surah_state.dart';

class GetAllSurahCubit extends Cubit<GetAllSurahState> {
  GetAllSurahCubit() : super(GetAllSurahInitial());
  final _repo = AlQuranRepo();

  void fetchAll() async {
    emit(GetAllSurahILoading());
    try {
      final data = await _repo.getlistAlQuran();
      emit(GetAllSurahSuccess(data: data));
    } catch (e) {
      emit(GetAllSurahFailure(msg: e.toString()));
    }
  }
}
