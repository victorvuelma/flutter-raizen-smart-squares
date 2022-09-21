import 'package:raizen_smart_squares/data/api/io_client.dart';
import 'package:raizen_smart_squares/data/models/session/session_result_model.dart';
import 'package:rxdart/rxdart.dart';

class SessionTimerService {
  final IoClient _ioClient;
  final resultSubject = BehaviorSubject<SessionResultModel>();

  SessionTimerService({
    required IoClient ioClient,
  }) : _ioClient = ioClient;

  void connect() {
    _ioClient.connect();

    _ioClient.client.on(
      'session-close',
      _handleSessionClose,
    );
  }

  void close() {
    _ioClient.close();

    resultSubject.close();
  }

  Future<void> _handleSessionClose(dynamic data) async {
    if (data == null || data is! Map<String, dynamic>) {
      return;
    }

    final sessionResult = SessionResultModel.fromJson(data);
    resultSubject.value = sessionResult;
  }
}
