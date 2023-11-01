import 'package:dio/dio.dart';
import 'package:my_al_quran_digital/utils/constans.dart';

class BaseService {
  Future<Response> get({
    required String endpoint,
  }) async {
    Dio dio = Dio();
    Response res;
    dio.options.baseUrl = baseUrl;
    res = await dio.get(endpoint);
    return res;
  }
}

class JadwalService {
  Future<Response> get({
    required String endpoint,
  }) async {
    Dio dio = Dio();
    Response res;
    dio.options.baseUrl = jadwalUrl;
    res = await dio.get(endpoint);
    return res;
  }
}
