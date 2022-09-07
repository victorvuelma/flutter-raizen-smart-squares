import '../controller/sele_o_beneficio_three_controller.dart';
import 'package:get/get.dart';

class SeleOBeneficioThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SeleOBeneficioThreeController());
  }
}
