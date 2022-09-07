import '../controller/sele_o_beneficio_one_controller.dart';
import 'package:get/get.dart';

class SeleOBeneficioOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SeleOBeneficioOneController());
  }
}
