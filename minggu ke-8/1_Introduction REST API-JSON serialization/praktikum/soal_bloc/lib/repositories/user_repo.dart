import 'package:dio/dio.dart';

final dio = Dio();

class UserRepo {
  Future<String> addUser({required String name, required String phone}) async {
    final formData = FormData.fromMap({'name': name, 'phone': phone});
    final res = await dio.post(
        'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts',
        data: formData);
    print(res.data["name"]);
    return "Berhasil menambahkan data";
  }
}
