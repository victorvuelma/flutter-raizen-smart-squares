import '../controller/sele_o_beneficio_two_controller.dart';
import 'package:get/get.dart';

class SeleOBeneficioTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SeleOBeneficioTwoController());
  }
}
