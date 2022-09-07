import '../controller/resultado_exercicio_controller.dart';
import 'package:get/get.dart';

class ResultadoExercicioBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ResultadoExercicioController());
  }
}
