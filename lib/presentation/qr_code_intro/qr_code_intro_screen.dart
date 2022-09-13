import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:raizen_smart_squares/widgets/intro_step.dart';

import 'controller/qr_code_intro_controller.dart';
import 'package:flutter/material.dart';
import 'package:raizen_smart_squares/core/app_export.dart';

class QRCodeIntroScreen extends GetWidget<QRCodeIntroController> {
  const QRCodeIntroScreen({
    super.key,
  });

  void onTapGoBack() {
    Get.back();
  }

  void onTapQRCodeRead() {
    Get.offNamed(AppRoutes.qrCodeScannerScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.light00,
        shadowColor: Colors.transparent,
        leading: IconButton(
          onPressed: onTapGoBack,
          icon: const Icon(
            LucideIcons.chevronLeft,
            color: ColorConstant.purple800,
          ),
        ),
      ),
      backgroundColor: ColorConstant.light00,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              constraints: BoxConstraints(minHeight: context.height - 80),
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.all(8),
                    child: Text(
                      'msg_qrcode_intro_title'.tr,
                      style: AppStyle.txtBigTitle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 8),
                  CarouselSlider(
                    carouselController: controller.carouselController,
                    options: CarouselOptions(
                      viewportFraction: 1.0,
                      enlargeCenterPage: false,
                      height: 300,
                      onPageChanged: (step, _) => controller.onStepChange(step),
                    ),
                    items: [
                      IntroStep(
                        imagePath: AssetConstant.imgIntroQRCodeStepFirst,
                        text: ("msg_qrcode_intro_first_step".tr),
                        textColor: ColorConstant.purple800,
                      ),
                      IntroStep(
                        imagePath: AssetConstant.imgIntroQRCodeStepSecond,
                        text: ("msg_qrcode_intro_second_step".tr),
                        textColor: ColorConstant.purple800,
                      ),
                      IntroStep(
                        imagePath: AssetConstant.imgIntroQRCodeStepThird,
                        text: ("msg_qrcode_intro_third_step".tr),
                        textColor: ColorConstant.purple800,
                      ),
                    ],
                  ),
                  Obx(
                    () => DotsIndicator(
                      dotsCount: 3,
                      position: controller.currentStep.value.toDouble(),
                      onTap: (step) => controller.goToStep(step.toInt()),
                      decorator: DotsDecorator(
                        size: const Size.square(8),
                        activeSize: const Size(40, 8),
                        color: ColorConstant.green400,
                        activeColor: ColorConstant.green400,
                        activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 192),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
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
                    'msg_qrcode_intro_ready'.tr,
                    textAlign: TextAlign.center,
                    style: AppStyle.txtMediumTitle.copyWith(
                      color: ColorConstant.light00,
                    ),
                  ),
                  const SizedBox(height: 32),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: onTapQRCodeRead,
                      style: AppStyle.btnElevatedGreen,
                      child: Text('msg_qrcode_intro_read'.tr),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
