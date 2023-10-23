import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_al_quran_digital/repositories/tafsir_repo.dart';

import '../../model/alquran_model.dart';

part 'get_tafsir_state.dart';

class GetTafsirCubit extends Cubit<GetTafsirState> {
  GetTafsirCubit() : super(GetTafsirInitial());
  final _repo = TafsirRepo();

  void fetchTafsir(int id) async {
    emit(GetTafsirLoading());
    try {
      final data = await _repo.getTafsir(id: id);
      emit(GetTafsirSuccess(data: data));
    } catch (e) {
      emit(GetTafsirFailure(msg: e.toString()));
    }
  }
}
