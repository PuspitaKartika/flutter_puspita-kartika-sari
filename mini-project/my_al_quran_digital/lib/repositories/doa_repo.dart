import 'package:my_al_quran_digital/model/doa_model.dart';
import 'package:my_al_quran_digital/services/base_service.dart';

class DoaRepo extends BaseService {
  Future<List<DoaModel>> getDoaList() async {
    final res = await get(endpoint: "/doa");
    print(res.data);
    return List<DoaModel>.from(
        (res.data as Iterable).map((e) => DoaModel.fromJson(e)));
  }

  Future<DoaModel> getDoaById({required int id}) async {
    final res = await get(endpoint: "/doa/$id");
    print(res.data);
    return DoaModel.fromJson(res.data);
  }
}
