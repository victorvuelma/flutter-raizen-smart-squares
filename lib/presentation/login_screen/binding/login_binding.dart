import 'package:raizen_smart_squares/core/authentication/authentication_manager.dart';
import 'package:raizen_smart_squares/data/repositories/authenticate/authenticate_repository.dart';
import 'package:raizen_smart_squares/presentation/login_screen/services/login_service.dart';

import '../controller/login_controller.dart';
import 'package:get/get.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginService>(
      () => LoginService(
        authenticateRepository: Get.find<AuthenticateRepository>(),
        authenticationManager: Get.find<AuthenticationManager>(),
      ),
    );
    Get.lazyPut<LoginController>(
      () => LoginController(
        loginService: Get.find<LoginService>(),
      ),
    );
  }
}
