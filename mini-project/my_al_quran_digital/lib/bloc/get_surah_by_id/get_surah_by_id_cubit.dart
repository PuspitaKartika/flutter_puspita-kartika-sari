import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_al_quran_digital/repositories/al_quran_repo.dart';

import '../../model/alquran_model.dart';

part 'get_surah_by_id_state.dart';

class GetSurahByIdCubit extends Cubit<GetSurahByIdState> {
  GetSurahByIdCubit() : super(GetSurahByIdInitial());
  final _repo = AlQuranRepo();

  void fectSurahById(int id) async {
    emit(GetSurahByIdLoading());
    try {
      final data = await _repo.getSurahById(id: id);
      final murotal = data.ayat!.map((e) => e.audio.satu!).toList();

      emit(GetSurahByIdSuccess(murotal, data: data));
    } catch (e) {
      emit(GetSurahByIdFailure(msg: e.toString()));
    }
  }
}
