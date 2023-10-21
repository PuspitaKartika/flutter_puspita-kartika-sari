import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_al_quran_digital/model/doa_model.dart';
import 'package:my_al_quran_digital/repositories/doa_repo.dart';

part 'get_doa_list_state.dart';

class GetDoaListCubit extends Cubit<GetDoaListState> {
  GetDoaListCubit() : super(GetDoaListInitial());
  final _repo = DoaRepo();

  void fetchAll() async {
    emit(GetDoaListLoading());
    try {
      final data = await _repo.getDoaList();
      emit(GetDoaListSuccess(data: data));
    } catch (e) {
      emit(GetDoaListFailure(msg: e.toString()));
    }
  }
}
