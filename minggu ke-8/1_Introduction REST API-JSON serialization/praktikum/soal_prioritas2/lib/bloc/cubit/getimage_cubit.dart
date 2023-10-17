import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:soal_prioritas2/repository/image_repository.dart';

part 'getimage_state.dart';

class GetimageCubit extends Cubit<GetimageState> {
  GetimageCubit() : super(GetimageInitial());
  final _repo = imageRepo();

  void fetchImage(String name) async {
    emit(GetimageLoading());
    try {
      final data = await _repo.fetchData(name: name);
      emit(GetimageSuccess(data));
    } catch (e) {
      emit(GetimageFailure());
    }
  }
}
