import '../controller/qr_code_intro_controller.dart';
import 'package:get/get.dart';

class QRCodeIntroBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QRCodeIntroController());
  }
}
