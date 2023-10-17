import 'package:dio/dio.dart';

// ignore: camel_case_types
class imageRepo {
  final Dio _dio = Dio();
  String imageUrl = '';

  Future fetchData({String? name}) async {
    final response = await _dio.get('https://api.dicebear.com/7.x/$name/svg');
    return response.data;
  }
}
