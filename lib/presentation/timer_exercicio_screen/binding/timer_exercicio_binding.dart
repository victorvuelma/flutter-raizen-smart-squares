import '../controller/timer_exercicio_controller.dart';
import 'package:get/get.dart';

class TimerExercicioBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TimerExercicioController());
  }
}
