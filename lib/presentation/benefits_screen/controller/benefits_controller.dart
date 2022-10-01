import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:dio/dio.dart';
import 'package:raizen_smart_squares/presentation/benefits_screen/services/benefits_points_service.dart';
import 'package:raizen_smart_squares/widgets/snackbar.dart';

import '/core/app_export.dart';

class BenefitsController extends GetxController {
  final BenefitsPointsService _benefitsPointsService;

  final RxInt points = RxInt(0);

  BenefitsController({
    required BenefitsPointsService benefitsPointsService,
  }) : _benefitsPointsService = benefitsPointsService;

  @override
  void onInit() {
    super.onInit();

    getPoints();
  }

  Future<void> getPoints() async {
    try {
      final customerPoints = await _benefitsPointsService.getPoints();

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
}
