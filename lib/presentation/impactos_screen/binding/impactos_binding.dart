import '../controller/impactos_controller.dart';
import 'package:get/get.dart';

class ImpactosBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ImpactosController());
  }
}
