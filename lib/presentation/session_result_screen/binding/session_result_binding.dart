import '../controller/session_result_controller.dart';
import 'package:get/get.dart';

class SessionResultBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => SessionResultController(),
    );
  }
}
