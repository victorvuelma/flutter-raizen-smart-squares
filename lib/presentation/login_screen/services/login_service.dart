import 'package:raizen_smart_squares/data/models/authenticate_request/authenticate_request_model.dart';
import 'package:raizen_smart_squares/data/models/user_profile/user_profile_model.dart';
import 'package:raizen_smart_squares/data/repositories/authenticate/authenticate_repository.dart';

import '/core/app_export.dart';

class LoginService {
  final AuthenticateRepository _authenticateRepository;
  final AuthenticationManager _authenticationManager;

  bool get isAuthenticated => _authenticationManager.isAuthenticated;

  const LoginService({
    required AuthenticateRepository authenticateRepository,
    required AuthenticationManager authenticationManager,
  })  : _authenticateRepository = authenticateRepository,
        _authenticationManager = authenticationManager;

  Future<UserProfileModel> authenticate({
    required String username,
    required String password,
  }) async {
    final request = AuthenticateRequestModel(
      username: username,
      password: password,
    );

    final response = await _authenticateRepository.authenticate(request);
    await _authenticationManager.authenticated(
      token: response.accessToken,
      profile: response.profile,
    );

    return response.profile;
  }
}
