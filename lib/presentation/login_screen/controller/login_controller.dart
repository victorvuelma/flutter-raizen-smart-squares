import 'package:dio/dio.dart';
import 'package:raizen_smart_squares/presentation/login_screen/services/login_service.dart';

import '/core/app_export.dart';
import 'package:flutter/material.dart';

enum LoginControllerState {
  init,
  loading,
  success,
  failed,
}

class LoginController extends GetxController {
  final LoginService _loginService;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final errorMessage = ''.obs;

  final state = Rx<LoginControllerState>(LoginControllerState.init);

  bool get isLoading => state.value == LoginControllerState.loading;

  LoginController({
    required LoginService loginService,
  }) : _loginService = loginService;

  @override
  void onClose() {
    super.onClose();

    emailController.dispose();
    passwordController.dispose();
  }

  void signIn() async {
    try {
      state.value = LoginControllerState.loading;

      final username = emailController.value.text;
      final password = passwordController.value.text;

      await _loginService.authenticate(
        username: username,
        password: password,
      );

      if (_loginService.isAuthenticated) {
        Get.offNamed(AppRoutes.mainScreen);

        state.value = LoginControllerState.success;
      }
    } on Error catch (_) {
      state.value = LoginControllerState.failed;

      Get.snackbar(
        'Ops!',
        'Um erro ocorreu e não foi possível concluir a autenticação',
      );
    } on DioError catch (_) {
      state.value = LoginControllerState.failed;

      Get.snackbar(
        'Ops!',
        'Um erro ocorreu e não foi possível concluir a autenticação',
      );
    }
  }
}
