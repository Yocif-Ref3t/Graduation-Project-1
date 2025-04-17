import 'package:dio/dio.dart';

abstract class API {
  static final Dio _dio = Dio(BaseOptions(baseUrl: "https://youssefrefaat2.pythonanywhere.com"));

  static Future<Response> post(String url, {required Map<String, dynamic> body}) async {
    return await _dio.post(url, data: body);
  }
}
