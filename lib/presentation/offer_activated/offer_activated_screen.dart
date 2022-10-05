import 'package:lucide_icons/lucide_icons.dart';

import 'controller/offer_activated_controller.dart';
import 'package:flutter/material.dart';
import 'package:raizen_smart_squares/core/app_export.dart';

class OfferActivatedScreen extends GetWidget<OfferActivatedController> {
  const OfferActivatedScreen({
    super.key,
  });

  void onTapGoBack() {
    Get.back();
  }

  void onTapOk() {
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
                "msg_offer_activated_title".tr,
                textAlign: TextAlign.center,
                style: AppStyle.txtBigTitle,
              ),
              const SizedBox(height: 24),
              Text(
                "msg_offer_activated_email".tr,
                textAlign: TextAlign.center,
                style: AppStyle.txtMediumTitle,
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onTapOk,
                  style: AppStyle.btnElevatedGreen,
                  child: Text("lbl_offer_activated_ok".tr.toUpperCase()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
