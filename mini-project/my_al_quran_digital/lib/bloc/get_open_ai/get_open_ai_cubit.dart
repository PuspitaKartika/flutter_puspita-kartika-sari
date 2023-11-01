import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_al_quran_digital/repositories/open_ai_repo.dart';

part 'get_open_ai_state.dart';

class GetOpenAiCubit extends Cubit<GetOpenAiState> {
  GetOpenAiCubit() : super(GetOpenAiInitial());

  void fetchOpenAi(String text) async {
    emit(GetOpenAiLoading());
    try {
      final data = await getOpenAI(text);

      emit(GetOpenAiSuccess(data: data));
    } catch (e) {
      emit(GetOpenAiFailure(msg: e.toString()));
    }
  }
}
