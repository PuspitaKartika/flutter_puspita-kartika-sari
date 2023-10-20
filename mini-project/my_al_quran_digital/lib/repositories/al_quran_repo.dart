import 'package:my_al_quran_digital/model/alquran_model.dart';
import 'package:my_al_quran_digital/services/base_service.dart';

class AlQuranRepo extends BaseService {
  Future<List<AlQuranModel>> getlistAlQuran() async {
    final res = await get(endpoint: "/v2/surat");
    print(res.data);
    return List<AlQuranModel>.from(
        (res.data['data'] as Iterable).map((e) => AlQuranModel.fromJson(e)));
  }

  Future<AlQuranModel> getSurahById({required int id}) async {
    final res = await get(endpoint: "/v2/surat/$id");
    print(res.data);
    return AlQuranModel.fromJson(res.data["data"]);
  }
}
