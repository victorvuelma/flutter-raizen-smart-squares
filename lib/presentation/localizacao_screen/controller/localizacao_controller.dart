import '/core/app_export.dart';
import 'package:raizen_smart_squares/presentation/localizacao_screen/models/localizacao_model.dart';

class LocalizacaoController extends GetxController {
  Rx<LocalizacaoModel> localizacaoModelObj = LocalizacaoModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
