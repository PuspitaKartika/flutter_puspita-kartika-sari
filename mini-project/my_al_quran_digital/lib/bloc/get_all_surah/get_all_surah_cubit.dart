import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_al_quran_digital/model/alquran_model.dart';

part 'get_all_surah_state.dart';

class GetAllSurahCubit extends Cubit<GetAllSurahState> {
  GetAllSurahCubit() : super(GetAllSurahInitial());
}
