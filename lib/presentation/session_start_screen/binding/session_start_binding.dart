import '../controller/session_start_controller.dart';
import 'package:get/get.dart';

class SessionStartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => SessionStartController(),
    );
  }
}
