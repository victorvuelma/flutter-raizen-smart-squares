import 'package:raizen_smart_squares/core/app_export.dart';

import '../controller/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => SplashController(
        authenticationService: Get.find<AuthenticationManager>(),
      ),
    );
  }
}
