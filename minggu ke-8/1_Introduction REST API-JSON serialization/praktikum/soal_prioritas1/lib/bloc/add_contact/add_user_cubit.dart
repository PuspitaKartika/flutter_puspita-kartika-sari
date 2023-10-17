import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:soal_prioritas1/repositories/user_repo.dart';

part 'add_user_state.dart';

class AddUserCubit extends Cubit<AddUserState> {
  AddUserCubit() : super(AddUserInitial());
  final _repo = UserRepo();

  void addUser({required String name, required String phone}) async {
    emit(AddUserLoading());
    try {
      final msg = await _repo.addUser(name: name, phone: phone);
      emit(AddUserSucces(msg));
    } catch (e) {
      emit(AddUserFailure(e.toString()));
    }
  }
}
