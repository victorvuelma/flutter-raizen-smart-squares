import '../controller/localizacao_controller.dart';
import 'package:get/get.dart';

class LocalizacaoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LocalizacaoController());
  }
}
