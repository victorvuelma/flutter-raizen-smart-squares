import 'package:raizen_smart_squares/data/repositories/session/session_repository.dart';

class SessionEndService {
  final SessionRepository _sessionRepository;

  const SessionEndService({
    required SessionRepository sessionRepository,
  }) : _sessionRepository = sessionRepository;

  Future<void> endSession() async {
    await _sessionRepository.endSession();
  }
}
