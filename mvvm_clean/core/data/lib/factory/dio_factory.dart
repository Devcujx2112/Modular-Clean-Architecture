import 'package:data/constants/constants.dart';
import 'package:data/data.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory();

  Future<Dio> getDio() async {
    final dio = Dio();

    Map<String, String> headers = {
      contentType: applicationJson,
      accept: applicationJson,
      authorization: "accessToken",
      clientId: "clientId",
    };

    dio.options = BaseOptions(
      baseUrl: "https://api.example.com",
      headers: headers,
      receiveTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 30),
    );

    if (!kReleaseMode) {
      dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseHeader: false,
        ),
      );
    }
    return dio;
  }
}
