import 'package:dio/dio.dart';

import 'package:flutter/foundation.dart';
import 'package:raizen_smart_squares/core/app_export.dart';

class ApiClient {
  final Dio dio = Dio(
    BaseOptions(baseUrl: 'https://raizen-smart-squares-api.herokuapp.com/v1'),
  );

  final AuthenticationManager _authenticationManager;

  ApiClient({
    required AuthenticationManager authenticationManager,
  }) : _authenticationManager = authenticationManager;

  void init() {
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (request, handler) {
          if (_authenticationManager.isAuthenticated) {
            final authorization =
                "Bearer ${_authenticationManager.accessToken}";

            request.headers['Authorization'] = authorization;
          }

          return handler.next(request);
        },
      ),
    );

    if (kDebugMode) {
      dio.interceptors.add(LogInterceptor(responseBody: false));
    }
  }
}
