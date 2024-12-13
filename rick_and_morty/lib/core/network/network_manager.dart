import 'package:dio/dio.dart';

final class NetworkManager {
  final _dio = Dio();

  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async {
    return _dio.get<T>(
      path,
      queryParameters: queryParameters,
    );
  }
}
