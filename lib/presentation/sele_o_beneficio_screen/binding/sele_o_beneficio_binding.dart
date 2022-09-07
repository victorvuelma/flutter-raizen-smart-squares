import '../controller/sele_o_beneficio_controller.dart';
import 'package:get/get.dart';

class SeleOBeneficioBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SeleOBeneficioController());
  }
}
