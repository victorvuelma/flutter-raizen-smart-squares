import '../controller/iniciar_exercicio_controller.dart';
import 'package:get/get.dart';

class IniciarExercicioBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IniciarExercicioController());
  }
}
