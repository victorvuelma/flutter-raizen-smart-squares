import '../controller/qr_code_three_controller.dart';
import 'package:get/get.dart';

class QrCodeThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QrCodeThreeController());
  }
}
