import 'package:lucide_icons/lucide_icons.dart';

import 'controller/session_start_controller.dart';
import 'package:flutter/material.dart';
import 'package:raizen_smart_squares/core/app_export.dart';

class SessionStartScreen extends GetWidget<SessionStartController> {
  const SessionStartScreen({
    super.key,
  });

  void onTapGoBack() {
    Get.back();
  }

  void onTapStart() {
    Get.offNamed(AppRoutes.timerExercicioScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.lightBackground,
      appBar: AppBar(
        backgroundColor: ColorConstant.lightBackground,
        shadowColor: Colors.transparent,
        leading: IconButton(
          onPressed: onTapGoBack,
          icon: const Icon(
            LucideIcons.chevronLeft,
            color: ColorConstant.purple800,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          constraints: BoxConstraints(
            minHeight: context.height - 96,
            minWidth: context.width,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: ColorConstant.green400,
                  shape: BoxShape.circle,
                ),
                width: 80,
                height: 80,
                child: const Icon(
                  LucideIcons.check,
                  color: ColorConstant.light00,
                  size: 40,
                ),
              ),
              const SizedBox(height: 32),
              Text(
                "msg_start_session_title".tr,
                textAlign: TextAlign.center,
                style: AppStyle.txtBigTitle,
              ),
              const SizedBox(height: 24),
              Text(
                "msg_start_session_when_done".tr,
                textAlign: TextAlign.center,
                style: AppStyle.txtMediumTitle,
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onTapStart,
                  style: AppStyle.btnElevatedGreen,
                  child: Text("lbl_start_session_start".tr.toUpperCase()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
