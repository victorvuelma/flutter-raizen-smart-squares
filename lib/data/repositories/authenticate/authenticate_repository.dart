import 'package:dio/dio.dart';
import 'package:raizen_smart_squares/data/models/authenticate/authenticate_request_model.dart';
import 'package:raizen_smart_squares/data/models/authenticate/authenticate_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'authenticate_repository.g.dart';

@RestApi()
abstract class AuthenticateRepository {
  factory AuthenticateRepository(
    Dio dio, {
    String baseUrl,
  }) = _AuthenticateRepository;

  @POST("/auth/customer")
  Future<AuthenticateResponseModel> authenticate(
    @Body() AuthenticateRequestModel request,
  );
}
