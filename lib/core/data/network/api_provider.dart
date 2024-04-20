import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../utils/constants/constants.dart';

class ApiProvider {
  Dio? _dio;

  static BaseOptions options = BaseOptions(
    baseUrl: BASE_URL,
    connectTimeout: const Duration(seconds: 30),
    headers: {
      "Content-Type": "application/json",
      "Accept": "application/json",
    },
  );

  ApiProvider._internal() {
    _dio = Dio(options)
      ..interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: true,
          request: true,
          error: true,
          compact: true,
          maxWidth: 90,
        ),
      );
  }

  static final ApiProvider _singleton = ApiProvider._internal();

  factory ApiProvider() {
    return _singleton;
  }

  Dio get httpClient => _dio!;
}
