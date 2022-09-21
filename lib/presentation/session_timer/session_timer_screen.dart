import 'package:lucide_icons/lucide_icons.dart';

import 'controller/session_timer_controller.dart';
import 'package:flutter/material.dart';
import 'package:raizen_smart_squares/core/app_export.dart';

class SessionTimerScreen extends GetWidget<SessionTimerController> {
  const SessionTimerScreen({
    super.key,
  });

  void onTapGoBack() {
    Get.back();
  }

  void onTapEnd() {
    controller.requestSessionEnd();
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
              const Icon(
                LucideIcons.timer,
                color: ColorConstant.green400,
                size: 80,
              ),
              const SizedBox(height: 40),
              Obx(
                () => Text(
                  controller.duration.value,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtBigTitle,
                ),
              ),
              const SizedBox(height: 40),
              Text(
                "msg_start_session_to_end".tr,
                textAlign: TextAlign.center,
                style: AppStyle.txtMediumTitle,
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                child: Obx(
                  () => ElevatedButton(
                    onPressed: controller.isLoading ? null : onTapEnd,
                    style: AppStyle.btnElevatedGreen,
                    child: Text("lbl_start_session_end".tr.toUpperCase()),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
