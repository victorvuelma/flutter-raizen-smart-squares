class ServerException implements Exception {}

class CacheException implements Exception {}

class NetworkException implements Exception {}

///can be used for throwing [NoInternetException]
class NoInternetException implements Exception {
  late final String _message;

  NoInternetException([this._message = 'NoInternetException Occurred']);

  @override
  String toString() {
    return _message;
  }
}
