// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_repository.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _SessionRepository implements SessionRepository {
  _SessionRepository(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<SessionModel> startSession({required bicycleCode}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SessionModel>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/session/:bicycleCode',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SessionModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SessionModel> endSession() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SessionModel>(
            Options(method: 'DELETE', headers: _headers, extra: _extra)
                .compose(_dio.options, '/session',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SessionModel.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
