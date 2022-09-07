import '../controller/beneficios_controller.dart';
import 'package:get/get.dart';

class BeneficiosBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BeneficiosController());
  }
}
