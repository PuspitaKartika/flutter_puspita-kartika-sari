import 'package:my_al_quran_digital/model/alquran_model.dart';
import 'package:my_al_quran_digital/services/base_service.dart';

class TafsirRepo extends BaseService {
  Future<AlQuranModel> getTafsir({required int id}) async {
    final res = await get(endpoint: "/v2/tafsir/$id");

    // ignore: avoid_print
    print(res.data);
    return AlQuranModel.fromJson(res.data["data"]);
  }
}
