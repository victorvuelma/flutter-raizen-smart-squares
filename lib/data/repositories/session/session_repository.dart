import 'package:dio/dio.dart';
import 'package:raizen_smart_squares/data/models/session/session_model.dart';
import 'package:retrofit/retrofit.dart';

part 'session_repository.g.dart';

@RestApi()
abstract class SessionRepository {
  factory SessionRepository(
    Dio dio, {
    String baseUrl,
  }) = _SessionRepository;

  @POST("/session/{bicycleCode}")
  Future<SessionModel> startSession({
    @Path("bicycleCode") required String bicycleCode,
  });

  @DELETE("/session")
  Future<SessionModel> endSession();
}
