import '/core/app_export.dart';

class SplashController extends GetxController {
  final AuthenticationManager _authenticationService;

  final nextPage = ''.obs;

  SplashController({
    required AuthenticationManager authenticationService,
  }) : _authenticationService = authenticationService;

  @override
  void onInit() {
    super.onInit();

    ever(nextPage, (page) => Get.offNamed(page));

    load();
  }

  Future<void> load() async {
    await Future.wait([
      _authenticationService.recoverFromStorage(),
      Future.delayed(const Duration(seconds: 1)),
    ]);

    nextPage.value = _authenticationService.isAuthenticated
        ? AppRoutes.mainScreen
        : AppRoutes.introScreen;
  }
}
