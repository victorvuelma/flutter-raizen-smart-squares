import '/core/app_export.dart';
import 'package:raizen_smart_squares/presentation/cadastro_screen/models/cadastro_model.dart';
import 'package:flutter/material.dart';

class CadastroController extends GetxController {
  TextEditingController frameOneController = TextEditingController();

  TextEditingController frameOneOneController = TextEditingController();

  TextEditingController frameOneTwoController = TextEditingController();

  TextEditingController frameOneThreeController = TextEditingController();

  TextEditingController frameOneFourController = TextEditingController();

  TextEditingController frameOneFiveController = TextEditingController();

  TextEditingController frameOneSixController = TextEditingController();

  Rx<CadastroModel> cadastroModelObj = CadastroModel().obs;

  RxBool checkbox = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    frameOneController.dispose();
    frameOneOneController.dispose();
    frameOneTwoController.dispose();
    frameOneThreeController.dispose();
    frameOneFourController.dispose();
    frameOneFiveController.dispose();
    frameOneSixController.dispose();
  }
}
