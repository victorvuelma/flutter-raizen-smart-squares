import '../controller/session_timer_controller.dart';
import 'package:get/get.dart';

class SessionTimerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SessionTimerController());
  }
}
