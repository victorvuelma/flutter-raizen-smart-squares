import '../controller/beneficio_resgatado_controller.dart';
import 'package:get/get.dart';

class BeneficioResgatadoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BeneficioResgatadoController());
  }
}
