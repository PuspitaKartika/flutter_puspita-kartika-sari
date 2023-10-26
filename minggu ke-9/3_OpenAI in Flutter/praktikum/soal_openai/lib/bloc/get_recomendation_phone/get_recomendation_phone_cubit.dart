import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:soal_openai/repositories/gpt_repo.dart';

part 'get_recomendation_phone_state.dart';

class GetRecomendationPhoneCubit extends Cubit<GetRecomendationPhoneState> {
  GetRecomendationPhoneCubit() : super(GetRecomendationPhoneInitial());
  final _repo = GptRepo();

  void getRecomendation(
      {String? budget, String? camera, String? storage}) async {
    try {
      emit(GetRecomendationPhoneLoading());
      final response = await _repo.getPhoneRecomendation(
          budget: budget, camera: camera, storage: storage);
      emit(GetRecomendationPhoneSuccess(
          result: response.choices![0].message!.content ?? ""));
    } catch (e) {
      emit(GetRecomendationPhoneFailure(msg: e.toString()));
    }
  }
}
