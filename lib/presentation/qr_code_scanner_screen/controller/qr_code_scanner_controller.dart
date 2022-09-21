import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:dio/dio.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:raizen_smart_squares/presentation/qr_code_scanner_screen/services/serssion_start_service.dart';
import 'package:raizen_smart_squares/widgets/snackbar.dart';

import '/core/app_export.dart';

enum QRCodeScannerControllerState {
  init,
  loading,
  success,
  failed,
}

class QRCodeScannerController extends GetxController {
  final SessionStartService _sessionStartService;

  final MobileScannerController cameraController = MobileScannerController();

  final state =
      Rx<QRCodeScannerControllerState>(QRCodeScannerControllerState.init);

  bool get isLoading => state.value == QRCodeScannerControllerState.loading;

  QRCodeScannerController({
    required SessionStartService sessionStartService,
  }) : _sessionStartService = sessionStartService;

  @override
  void onClose() {
    super.onClose();

    cameraController.stop();
    cameraController.dispose();
  }

  Future<void> onScannerRead(String code) async {
    try {
      state.value = QRCodeScannerControllerState.loading;

      await _sessionStartService.startSession(code);

      state.value = QRCodeScannerControllerState.success;

      Get.offNamed(AppRoutes.sessionStartScreen);
    } on Error catch (_) {
      state.value = QRCodeScannerControllerState.failed;

      showAwesomeSnackbar(
        AwesomeSnackbarContent(
          title: 'Ops',
          message:
              'Não foi possível iniciar sua sessão, tente novamente mais tarde.',
          contentType: ContentType.failure,
        ),
      );
    } on DioError catch (_) {
      state.value = QRCodeScannerControllerState.failed;

      showAwesomeSnackbar(
        AwesomeSnackbarContent(
          title: 'Ops',
          message:
              'Não foi possível iniciar sua sessão, tente novamente mais tarde.',
          contentType: ContentType.failure,
        ),
      );
    }
  }
}
