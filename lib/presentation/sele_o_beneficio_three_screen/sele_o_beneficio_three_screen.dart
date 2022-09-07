import 'controller/sele_o_beneficio_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:raizen_smart_squares/core/app_export.dart';
import 'package:raizen_smart_squares/widgets/custom_button.dart';

class SeleOBeneficioThreeScreen
    extends GetWidget<SeleOBeneficioThreeController> {
  @override
  Widget build(BuildContext context) {
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
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 15,
                                                        top: 34,
                                                        right: 15),
                                                    child: ImageView(
                                                        imagePath: AssetConstant
                                                            .img50off61,
                                                        height: getVerticalSize(
                                                            348.00),
                                                        width:
                                                            getHorizontalSize(
                                                                330.00)))),
                                            CustomButton(
                                                width: 257,
                                                text: "lbl_80_ra_zes".tr,
                                                margin: getMargin(
                                                    left: 15,
                                                    top: 35,
                                                    right: 15),
                                                variant: ButtonVariant
                                                    .OutlineBluegray1001_2,
                                                shape: ButtonShape.Square,
                                                alignment: Alignment.center),
                                            CustomButton(
                                                width: 294,
                                                text: "lbl_resgatar".tr,
                                                margin: getMargin(
                                                    left: 15,
                                                    top: 7,
                                                    right: 15,
                                                    bottom: 20),
                                                onTap: onTapBtnResgatar,
                                                alignment: Alignment.center)
                                          ])))))
                    ]))));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapBtnResgatar() {
    Get.toNamed(AppRoutes.beneficioResgatadoScreen);
  }
}
