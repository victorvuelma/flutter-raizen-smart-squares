import 'package:lucide_icons/lucide_icons.dart';

import 'controller/session_result_controller.dart';
import 'package:flutter/material.dart';
import 'package:raizen_smart_squares/core/app_export.dart';

class SessionResultScreen extends GetWidget<SessionResultController> {
  const SessionResultScreen({
    super.key,
  });

  void onTapDone() {
    Get.back();
  }

  void onTapGoBack() {
    Get.back();
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
          constraints: BoxConstraints(
            minHeight: context.height - 82,
            minWidth: context.width,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "msg_result_session_title".tr,
                textAlign: TextAlign.center,
                style: AppStyle.txtBigTitle,
              ),
              Text(
                "msg_result_session_check".tr,
                textAlign: TextAlign.center,
                style: AppStyle.txtMediumTitle.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
              ImageView(imagePath: AssetConstant.imgSessionResult),
              SizedBox(
                width: context.width * 0.8,
                child: Wrap(
                  children: [
                    SizedBox(
                      width: context.width * 0.5,
                      // ignore: prefer_const_constructors
                      child: Text(
                        "Ciclos",
                        style: AppStyle.txtMediumTitle,
                      ),
                    ),
                    SizedBox(
                      width: context.width * 0.25,
                      child: Text(
                        controller.result.cycles.toString(),
                        style: AppStyle.txtMediumTitle,
                      ),
                    ),
                    SizedBox(
                      width: context.width * 0.5,
                      child: const Text(
                        "Energia",
                        style: AppStyle.txtMediumTitle,
                      ),
                    ),
                    SizedBox(
                      width: context.width * 0.25,
                      child: Text(
                        controller.result.potency.toString(),
                        style: AppStyle.txtMediumTitle,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(32),
                decoration: const BoxDecoration(
                  color: ColorConstant.purple800,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(32),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      "msg_result_session_win".trParams(
                        {
                          "amount": controller.result.points.toString(),
                          "pt": controller.result.points == 1
                              ? "lbl_point".tr
                              : "lbl_points".tr,
                        },
                      ).toUpperCase(),
                      textAlign: TextAlign.center,
                      style: AppStyle.txtBigTitle.copyWith(
                        color: ColorConstant.light00,
                      ),
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: onTapDone,
                        style: AppStyle.btnElevatedGreen,
                        child: Text('msg_result_session_done'.tr.toUpperCase()),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapBtnConcluir() {
    Get.toNamed(AppRoutes.mainScreen);
  }
}
