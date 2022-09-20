import 'package:raizen_smart_squares/data/repositories/session/session_repository.dart';
import 'package:raizen_smart_squares/presentation/qr_code_scanner_screen/services/serssion_start_service.dart';

import '../controller/qr_code_scanner_controller.dart';
import 'package:get/get.dart';

class QRCodeScannerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => SessionStartService(
        sessionRepository: Get.find<SessionRepository>(),
      ),
    );

    Get.lazyPut(
      () => QRCodeScannerController(
        sessionStartService: Get.find<SessionStartService>(),
      ),
    );
  }
}
