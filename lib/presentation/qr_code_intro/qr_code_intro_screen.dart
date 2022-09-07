import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:raizen_smart_squares/widgets/intro_step.dart';

import 'controller/qr_code_intro_controller.dart';
import 'package:flutter/material.dart';
import 'package:raizen_smart_squares/core/app_export.dart';
import 'package:raizen_smart_squares/widgets/custom_button.dart';

class QRCodeIntroScreen extends GetWidget<QRCodeIntroController> {
  const QRCodeIntroScreen({
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
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              constraints: BoxConstraints(minHeight: context.height - 80),
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'msg_qrcode_intro_title'.tr,
                    style: AppStyle.txtBigTitle,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24),
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
                  const SizedBox(height: 160),
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
                      onPressed: null,
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

    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: GestureDetector(
                              onTap: () {
                                onTapImgArrowleft();
                              },
                              child: Padding(
                                  padding:
                                      getPadding(left: 17, top: 20, right: 17),
                                  child: ImageView(
                                      svgPath: AssetConstant.imgArrowleft,
                                      height: getVerticalSize(20.00),
                                      width: getHorizontalSize(11.00))))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              margin: getMargin(top: 45),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: getHorizontalSize(239.00),
                                        margin: getMargin(left: 54, right: 54),
                                        child: Text("msg_siga_as_instru".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.center,
                                            style: AppStyle.txtInterExtraBold16
                                                .copyWith())),
                                    Padding(
                                        padding: getPadding(
                                            left: 54, top: 43, right: 54),
                                        child: ImageView(
                                            imagePath: AssetConstant.imgImage11,
                                            height: getVerticalSize(200.00),
                                            width: getHorizontalSize(250.00))),
                                    Container(
                                        width: getHorizontalSize(251.00),
                                        margin: getMargin(
                                            left: 54, top: 65, right: 54),
                                        child: Text("msg_escolha_uma_das".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.center,
                                            style: AppStyle.txtInterRegular16
                                                .copyWith())),
                                    Padding(
                                        padding: getPadding(
                                            left: 54, top: 76, right: 54),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Container(
                                                  height:
                                                      getVerticalSize(10.00),
                                                  width:
                                                      getHorizontalSize(60.00),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .lightGreen400,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  5.00)))),
                                              GestureDetector(
                                                  onTap: () {
                                                    onTapEllipseOne();
                                                  },
                                                  child: Container(
                                                      height: getSize(10.00),
                                                      width: getSize(10.00),
                                                      margin:
                                                          getMargin(left: 21),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .lightGreen400,
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      5.00))))),
                                              GestureDetector(
                                                  onTap: () {
                                                    onTapEllipseTwo();
                                                  },
                                                  child: Container(
                                                      height: getSize(10.00),
                                                      width: getSize(10.00),
                                                      margin:
                                                          getMargin(left: 21),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .lightGreen400,
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      5.00)))))
                                            ])),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            width: double.infinity,
                                            margin: getMargin(top: 54),
                                            decoration: AppDecoration
                                                .fillPurple800
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .customBorderTL40),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                      width: getHorizontalSize(
                                                          277.00),
                                                      margin: getMargin(
                                                          left: 39,
                                                          top: 34,
                                                          right: 39),
                                                      child: Text(
                                                          "msg_quando_estiver"
                                                              .tr,
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtInterSemiBold16WhiteA700
                                                              .copyWith())),
                                                  CustomButton(
                                                      width: 257,
                                                      text: "lbl_ler_o_qr_code"
                                                          .tr,
                                                      margin: getMargin(
                                                          left: 39,
                                                          top: 27,
                                                          right: 39,
                                                          bottom: 30),
                                                      onTap: onTapBtnLeroqrcode)
                                                ])))
                                  ])))
                    ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapEllipseOne() {
    Get.toNamed(AppRoutes.qrCodeTwoScreen);
  }

  onTapEllipseTwo() {
    Get.toNamed(AppRoutes.qrCodeThreeScreen);
  }

  onTapBtnLeroqrcode() {
    Get.toNamed(AppRoutes.iniciarExercicioScreen);
  }
}
