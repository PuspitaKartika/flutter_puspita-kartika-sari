import 'package:dio/dio.dart';
import 'package:soal_prioritas1/model/data_model.dart';
import 'package:soal_prioritas1/model/user_no2.dart';

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

  Future<String> updateData({
    required String title,
    required String body,
  }) async {
    final formData = FormData.fromMap(
        {'id': 1, 'title': title, 'body': body, 'userId': "1"});

    final res = await dio.put('https://jsonplaceholder.typicode.com/posts/1',
        data: formData);
    print(res.data);
    return "Berhasil mengupdate data";
  }

  Future<DataModel> getData() async {
    final res = await dio.get(
      'https://jsonplaceholder.typicode.com/posts/1',
    );
    print(res.data);
    return DataModel.fromJson(res.data);
  }
}
