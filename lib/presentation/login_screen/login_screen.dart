import 'package:lucide_icons/lucide_icons.dart';

import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:raizen_smart_squares/core/app_export.dart';

class LoginScreen extends GetWidget<LoginController> {
  const LoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.light00,
        shadowColor: Colors.transparent,
        leading: const Icon(
          LucideIcons.chevronLeft,
          color: ColorConstant.purple800,
        ),
      ),
      backgroundColor: ColorConstant.light00,
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(minHeight: context.height - 128),
          padding: const EdgeInsets.all(16),
          child: Obx(
            () => Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'msg_login_title'.tr,
                      style: AppStyle.txtBigTitle,
                    ),
                    const SizedBox(height: 48),
                    TextFormField(
                      controller: controller.emailController,
                      keyboardType: TextInputType.emailAddress,
                      readOnly: controller.isLoading,
                      decoration: InputDecoration(
                        labelText: 'lbl_login_email'.tr,
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: controller.passwordController,
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      readOnly: controller.isLoading,
                      decoration: InputDecoration(
                        labelText: 'lbl_login_password'.tr,
                      ),
                    ),
                    TextButton(
                      onPressed: () => {},
                      child: Text('msg_login_forgot_password'.tr),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 32),
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: controller.isLoading ? null : controller.signIn,
                    style: AppStyle.btnElevatedGreen,
                    child: Text('msg_login_login'.tr),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
