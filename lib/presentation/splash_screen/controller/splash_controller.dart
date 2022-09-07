import '/core/app_export.dart';

class SplashController extends GetxController {
  final nextPage = ''.obs;

  @override
  void onInit() {
    super.onInit();

    ever(nextPage, (page) => Get.offNamed(page));

    load();
  }

  Future<void> load() async {
    await Future.delayed(const Duration(seconds: 1));

    nextPage.value = AppRoutes.introScreen;
  }
}
