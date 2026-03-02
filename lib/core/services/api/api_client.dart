import 'package:curl_logger_dio_interceptor/curl_logger_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

Dio get apiClient {
  final Dio client = Dio(
    BaseOptions(
      baseUrl: 'https://api.example.com/api',
      contentType: 'application/json',
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      sendTimeout: const Duration(seconds: 10),
      headers: <String, dynamic>{'Content-Type': 'application/json'},
    ),
  );

  client.interceptors.add(PrettyDioLogger());
  client.interceptors.add(CurlLoggerDioInterceptor());

  return client;
}
