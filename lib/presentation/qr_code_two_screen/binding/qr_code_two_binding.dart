import '../controller/qr_code_two_controller.dart';
import 'package:get/get.dart';

class QrCodeTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QrCodeTwoController());
  }
}
