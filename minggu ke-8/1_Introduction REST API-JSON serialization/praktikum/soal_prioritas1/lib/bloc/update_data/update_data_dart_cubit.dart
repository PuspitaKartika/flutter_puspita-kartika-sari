import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:soal_prioritas1/repositories/user_repo.dart';

part 'update_data_dart_state.dart';

class UpdateDataDartCubit extends Cubit<UpdateDataDartState> {
  UpdateDataDartCubit() : super(UpdateDataDartInitial());
  final _repo = UserRepo();

  void updateData(
    String title,
    String body,
  ) async {
    emit(UpdateDataDartLoading());
    try {
      final msg = await _repo.updateData(
        title: title,
        body: body,
      );
      emit(UpdateDataDartSuccess(msg));
    } catch (e) {
      print(e);
    }
  }
}
