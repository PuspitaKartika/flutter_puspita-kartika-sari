import 'package:my_al_quran_digital/model/country_model.dart';
import 'package:my_al_quran_digital/model/jadwal_sholat_model.dart';
import 'package:my_al_quran_digital/services/base_service.dart';

class JadwalSolatRepo extends JadwalService {
  Future<List<CountryModel>> getAllCountry() async {
    final res = await get(endpoint: "/kota");
    return List<CountryModel>.from(
        (res.data['kota'] as Iterable).map((e) => CountryModel.fromJson(e)));
  }

  Future<List<CountryModel>> getCountryById({required int id}) async {
    final res = await get(endpoint: "/kota/kode/$id");
    return List<CountryModel>.from(
        (res.data['kota'] as Iterable).map((e) => CountryModel.fromJson(e)));
  }

  Future<JadwalSolatModel> getJadwalSolat(
      {required int id, required String tanggal}) async {
    final res = await get(endpoint: "/jadwal/kota/$id/tanggal/$tanggal");
    return JadwalSolatModel.fromJson(res.data['jadwal']['data']);
  }
}
