import 'controller/qr_code_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:raizen_smart_squares/core/app_export.dart';
import 'package:raizen_smart_squares/widgets/custom_button.dart';

class QrCodeThreeScreen extends GetWidget<QrCodeThreeController> {
  @override
  Widget build(BuildContext context) {
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
                                        margin: getMargin(left: 39, right: 39),
                                        child: Text("msg_siga_as_instru".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.center,
                                            style: AppStyle.txtInterExtraBold16
                                                .copyWith())),
                                    Padding(
                                        padding: getPadding(
                                            left: 39, top: 43, right: 39),
                                        child: ImageView(
                                            imagePath: AssetConstant.imgImage13,
                                            height: getVerticalSize(200.00),
                                            width: getHorizontalSize(281.00))),
                                    Container(
                                        width: getHorizontalSize(254.00),
                                        margin: getMargin(
                                            left: 39, top: 65, right: 39),
                                        child: Text("msg_pronto_agora".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.center,
                                            style: AppStyle.txtInterRegular16
                                                .copyWith())),
                                    Padding(
                                        padding: getPadding(
                                            left: 39, top: 76, right: 39),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              GestureDetector(
                                                  onTap: () {
                                                    onTapEllipseOne();
                                                  },
                                                  child: Container(
                                                      height: getSize(10.00),
                                                      width: getSize(10.00),
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
                                                                      5.00))))),
                                              Container(
                                                  height:
                                                      getVerticalSize(10.00),
                                                  width:
                                                      getHorizontalSize(60.00),
                                                  margin: getMargin(left: 20),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .lightGreen400,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  5.00))))
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
    Get.toNamed(AppRoutes.qrCodeIntroScreen);
  }

  onTapEllipseTwo() {
    Get.toNamed(AppRoutes.qrCodeTwoScreen);
  }

  onTapBtnLeroqrcode() {
    Get.toNamed(AppRoutes.iniciarExercicioScreen);
  }
}
