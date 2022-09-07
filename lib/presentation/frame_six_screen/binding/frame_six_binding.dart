import '../controller/frame_six_controller.dart';
import 'package:get/get.dart';

class FrameSixBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FrameSixController());
  }
}
