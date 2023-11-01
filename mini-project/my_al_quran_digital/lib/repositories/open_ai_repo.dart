import 'package:dio/dio.dart';
import 'package:my_al_quran_digital/utils/constans.dart';

Dio dio = Dio();
Future<String> getOpenAI(String text) async {
  final res = await dio.post(
    "https://generativelanguage.googleapis.com/v1beta3/models/text-bison-001:generateText?key=$apiKey",
    data: {
      "prompt": {"text": text},
      "temperature": 1.0,
      "candidateCount": 3
    },
  );
  // ignore: avoid_print
  print(res.data);
  return res.data["candidates"][0]["output"].toString();
}
