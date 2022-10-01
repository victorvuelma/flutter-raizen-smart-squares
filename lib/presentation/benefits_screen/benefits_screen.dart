import 'controller/benefits_controller.dart';
import 'package:flutter/material.dart';
import 'package:raizen_smart_squares/core/app_export.dart';

class BenefitsScreen extends GetWidget<BenefitsController> {
  const BenefitsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primary,
      appBar: AppBar(
        backgroundColor: ColorConstant.primary,
        foregroundColor: ColorConstant.green400,
        title: Text("lbl_benefits_title".tr),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: context.width,
            decoration: const BoxDecoration(
              color: ColorConstant.light10,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(48),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_main_total_points".tr,
                              style: AppStyle.txtSmallTitle,
                            ),
                            const SizedBox(height: 16),
                            Row(
                              children: [
                                ImageView(
                                  svgPath: AssetConstant.imgRoots,
                                ),
                                const SizedBox(width: 8),
                                Obx(() => Text(
                                      "lbl_total_points".trParams(
                                        {
                                          "amount": controller.points.value
                                              .toString(),
                                          "pt": controller.points.value == 1
                                              ? "lbl_point".tr
                                              : "lbl_points".tr,
                                        },
                                      ).toUpperCase(),
                                      style: AppStyle.txtMediumTitle,
                                    )),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(),
              ],
            ),
          ),
        ),
      ),
    );

    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.purple800,
            body: Container(
                margin: getMargin(top: 15),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: size.width,
                              margin: getMargin(left: 13, right: 13),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          onTapImgArrowleft();
                                        },
                                        child: Padding(
                                            padding: getPadding(bottom: 31),
                                            child: ImageView(
                                                svgPath: AssetConstant
                                                    .imgArrowleftLightGreen400,
                                                height: getVerticalSize(20.00),
                                                width:
                                                    getHorizontalSize(11.00)))),
                                    Padding(
                                        padding: getPadding(left: 59, top: 20),
                                        child: Text("lbl_benef_cios".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterExtraBold32
                                                .copyWith()))
                                  ]))),
                      Expanded(
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: SingleChildScrollView(
                                  padding: getPadding(top: 48),
                                  child: Container(
                                      decoration: AppDecoration.fillGray50
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .customBorderTL40),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Container(
                                                    margin: getMargin(
                                                        left: 26,
                                                        top: 23,
                                                        right: 26),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      right:
                                                                          10),
                                                              child: Text(
                                                                  "lbl_saldo_total"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtInterLight15
                                                                      .copyWith())),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 16),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    ImageView(
                                                                        svgPath:
                                                                            AssetConstant
                                                                                .imgVector,
                                                                        height: getVerticalSize(
                                                                            31.00),
                                                                        width: getHorizontalSize(
                                                                            25.00)),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                8,
                                                                            top:
                                                                                1,
                                                                            bottom:
                                                                                6),
                                                                        child: Text(
                                                                            "lbl_100_ra_zes"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtInterBold24Purple800.copyWith()))
                                                                  ]))
                                                        ]))),
                                            Container(
                                                height: getVerticalSize(1.00),
                                                width: size.width,
                                                margin: getMargin(top: 28),
                                                decoration: BoxDecoration(
                                                    color: ColorConstant
                                                        .bluegray90066)),
                                            Align(
                                                alignment: Alignment.center,
                                                child: GestureDetector(
                                                    onTap: () {
                                                      onTapImgOFFTwentyOne();
                                                    },
                                                    child: Padding(
                                                        padding: getPadding(
                                                            left: 15,
                                                            top: 34,
                                                            right: 15),
                                                        child: ImageView(
                                                            imagePath:
                                                                AssetConstant
                                                                    .img50off21,
                                                            height:
                                                                getVerticalSize(
                                                                    298.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    330.00))))),
                                            Align(
                                                alignment: Alignment.center,
                                                child: GestureDetector(
                                                    onTap: () {
                                                      onTapImgOFFThirtyOne();
                                                    },
                                                    child: Padding(
                                                        padding: getPadding(
                                                            left: 15,
                                                            top: 35,
                                                            right: 15),
                                                        child: ImageView(
                                                            imagePath:
                                                                AssetConstant
                                                                    .img50off31,
                                                            height:
                                                                getVerticalSize(
                                                                    354.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    330.00))))),
                                            Align(
                                                alignment: Alignment.center,
                                                child: GestureDetector(
                                                    onTap: () {
                                                      onTapImgOFFFiftyOne();
                                                    },
                                                    child: Padding(
                                                        padding: getPadding(
                                                            left: 15,
                                                            top: 34,
                                                            right: 15),
                                                        child: ImageView(
                                                            imagePath:
                                                                AssetConstant
                                                                    .img50off51,
                                                            height:
                                                                getVerticalSize(
                                                                    389.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    330.00))))),
                                            Align(
                                                alignment: Alignment.center,
                                                child: GestureDetector(
                                                    onTap: () {
                                                      onTapImgOFFSixtyOne();
                                                    },
                                                    child: Padding(
                                                        padding: getPadding(
                                                            left: 15,
                                                            top: 36,
                                                            right: 15,
                                                            bottom: 20),
                                                        child: ImageView(
                                                            imagePath:
                                                                AssetConstant
                                                                    .img50off61,
                                                            height:
                                                                getVerticalSize(
                                                                    348.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    330.00)))))
                                          ])))))
                    ]))));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapImgOFFTwentyOne() {
    Get.toNamed(AppRoutes.seleOBeneficioScreen);
  }

  onTapImgOFFThirtyOne() {
    Get.toNamed(AppRoutes.seleOBeneficioOneScreen);
  }

  onTapImgOFFFiftyOne() {
    Get.toNamed(AppRoutes.seleOBeneficioTwoScreen);
  }

  onTapImgOFFSixtyOne() {
    Get.toNamed(AppRoutes.seleOBeneficioThreeScreen);
  }
}
