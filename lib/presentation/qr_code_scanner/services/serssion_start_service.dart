import 'package:raizen_smart_squares/data/models/session/session_model.dart';
import 'package:raizen_smart_squares/data/repositories/session/session_repository.dart';

class SessionStartService {
  final SessionRepository _sessionRepository;

  const SessionStartService({
    required SessionRepository sessionRepository,
  }) : _sessionRepository = sessionRepository;

  Future<SessionModel> startSession(String bicycleCode) async {
    final session = await _sessionRepository.startSession(
      bicycleCode: bicycleCode,
    );

    return session;
  }
}
