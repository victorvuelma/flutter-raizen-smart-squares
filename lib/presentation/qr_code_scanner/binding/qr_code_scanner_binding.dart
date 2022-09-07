import '../controller/qr_code_scanner_controller.dart';
import 'package:get/get.dart';

class QRCodeScannerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QRCodeScannerController());
  }
}
