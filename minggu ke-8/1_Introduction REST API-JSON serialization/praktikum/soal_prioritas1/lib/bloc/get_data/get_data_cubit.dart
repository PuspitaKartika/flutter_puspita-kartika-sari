import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:soal_prioritas1/model/data_model.dart';

import 'package:soal_prioritas1/repositories/user_repo.dart';

part 'get_data_state.dart';

class GetDataCubit extends Cubit<GetDataState> {
  GetDataCubit() : super(GetDataInitial());
  final _repo = UserRepo();

  void fetchData() async {
    emit(GetDataLoading());
    try {
      final data = await _repo.getData();
      emit(GetDataSuccess(data));
    } catch (e) {
      print(e);
    }
  }
}
