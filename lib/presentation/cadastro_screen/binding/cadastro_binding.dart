import '../controller/cadastro_controller.dart';
import 'package:get/get.dart';

class CadastroBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CadastroController());
  }
}
