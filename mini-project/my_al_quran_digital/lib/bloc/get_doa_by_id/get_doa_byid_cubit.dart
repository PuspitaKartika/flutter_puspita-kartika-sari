import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_al_quran_digital/repositories/doa_repo.dart';

import '../../model/doa_model.dart';

part 'get_doa_byid_state.dart';

class GetDoaByidCubit extends Cubit<GetDoaByidState> {
  GetDoaByidCubit() : super(GetDoaByidInitial());
  final _repo = DoaRepo();

  void fetchDoaById(int id) async {
    emit(GetDoaByidLoading());
    try {
      final data = await _repo.getDoaById(id: id);
      emit(GetDoaByidSuccess(data: data));
    } catch (e) {
      emit(GetDoaByidFailure(msg: e.toString()));
    }
  }
}
