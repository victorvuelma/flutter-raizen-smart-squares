import 'package:dio/dio.dart';

class ApiClient {
  final Dio dio = Dio(
    BaseOptions(baseUrl: 'https://raizen-smart-squares-api.herokuapp.com/v1'),
  );

  void init() {}
}
