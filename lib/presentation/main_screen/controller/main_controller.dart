import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:dio/dio.dart';
import 'package:raizen_smart_squares/presentation/main_screen/services/main_points_service.dart';
import 'package:raizen_smart_squares/widgets/snackbar.dart';

import '/core/app_export.dart';

class MainController extends GetxController {
  final MainPointsService _mainPointsService;
  final AuthenticationManager _authenticationManager;

  final RxInt points = RxInt(0);

  MainController({
    required MainPointsService mainPointsService,
    required AuthenticationManager authenticationManager,
  })  : _mainPointsService = mainPointsService,
        _authenticationManager = authenticationManager;

  @override
  void onInit() {
    super.onInit();

    getPoints();
  }

  Future<void> getPoints() async {
    try {
      final customerPoints = await _mainPointsService.getPoints();

      points.value = customerPoints;
    } on Error catch (_) {
      showAwesomeSnackbar(
        AwesomeSnackbarContent(
          title: 'Ops',
          message:
              'Não foi possível atualizar seu total de raízes, tente novamente mais tarde.',
          contentType: ContentType.failure,
        ),
      );
    } on DioError catch (_) {
      showAwesomeSnackbar(
        AwesomeSnackbarContent(
          title: 'Ops',
          message:
              'Não foi possível atualizar seu total de raízes, tente novamente mais tarde.',
          contentType: ContentType.failure,
        ),
      );
    }
  }

  Future<void> logout() async {
    _authenticationManager.clearAutentication();

    Get.offNamedUntil(
      AppRoutes.loginScreen,
      (_) => true,
    );
  }
}
