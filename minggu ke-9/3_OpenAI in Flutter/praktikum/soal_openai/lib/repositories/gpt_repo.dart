import 'package:dio/dio.dart';
import 'package:soal_openai/models/gpt_model.dart';

class GptRepo {
  final Dio dio = Dio();
  final String baseUrl = "https://api.openai.com/v1/chat/completions";
  final String token = "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";

  Future<GptModel> getPhoneRecomendation({
    String? budget,
    String? camera,
    String? storage,
  }) async {
    try {
      final Map<String, dynamic> data = {
        "model": "gpt-3.5-turbo",
        "messages": [
          {
            "role": "user",
            "content":
                "I'm looking for a list of mobile phone recommendations. My budget is around $budget IDR, and I'm interested in phones with a good camera (at least $camera MP) and a minimum of $storage GB of storage. Can you suggest some options?"
          }
        ]
      };
      final response = await dio.post(
        baseUrl,
        data: data,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Authorization':
                'Bearer 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'
          },
        ),
      );
      // print(response.toString());
      return GptModel.fromJson(response.data);
    } catch (e) {
      throw Exception("Error: $e");
    }
  }
}
