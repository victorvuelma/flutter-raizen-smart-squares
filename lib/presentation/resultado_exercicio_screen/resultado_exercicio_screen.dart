import 'controller/resultado_exercicio_controller.dart';
import 'package:flutter/material.dart';
import 'package:raizen_smart_squares/core/app_export.dart';
import 'package:raizen_smart_squares/widgets/custom_button.dart';

class ResultadoExercicioScreen extends GetWidget<ResultadoExercicioController> {
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
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 17, top: 31, right: 17),
                              child: Text("lbl_ufa_agora_sim".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterExtraBold24
                                      .copyWith()))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: getHorizontalSize(283.00),
                              margin: getMargin(left: 17, top: 21, right: 17),
                              child: Text("msg_confira_seus_re".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style:
                                      AppStyle.txtInterSemiBold16.copyWith()))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 17, top: 44, right: 17),
                              child: ImageView(
                                  imagePath: AssetConstant.imgImage15,
                                  height: getVerticalSize(200.00),
                                  width: getHorizontalSize(189.00)))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: getHorizontalSize(180.00),
                              margin: getMargin(left: 29, top: 81, right: 29),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_dist_ncia_perco2".tr,
                                        style: TextStyle(
                                            color: ColorConstant.purple80099,
                                            fontSize: getFontSize(18),
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400)),
                                    TextSpan(
                                        text: " \n".tr,
                                        style: TextStyle(
                                            color: ColorConstant.purple800,
                                            fontSize: getFontSize(18),
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400)),
                                    TextSpan(
                                        text: "lbl_tempo".tr,
                                        style: TextStyle(
                                            color: ColorConstant.purple80099,
                                            fontSize: getFontSize(18),
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400)),
                                    TextSpan(
                                        text: " \n".tr,
                                        style: TextStyle(
                                            color: ColorConstant.purple800,
                                            fontSize: getFontSize(18),
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400)),
                                    TextSpan(
                                        text: "msg_energia_gasta".tr,
                                        style: TextStyle(
                                            color: ColorConstant.purple80099,
                                            fontSize: getFontSize(18),
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400))
                                  ]),
                                  textAlign: TextAlign.left))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: double.infinity,
                              margin: getMargin(top: 63, bottom: 1),
                              decoration: AppDecoration.fillPurple800.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL40),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width: getHorizontalSize(213.00),
                                        margin: getMargin(
                                            left: 51, top: 27, right: 51),
                                        child: Text("msg_20_ra_zes_par".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.center,
                                            style: AppStyle.txtInterBold24
                                                .copyWith())),
                                    CustomButton(
                                        width: 257,
                                        text: "lbl_concluir".tr,
                                        margin: getMargin(
                                            left: 51,
                                            top: 16,
                                            right: 51,
                                            bottom: 29),
                                        onTap: onTapBtnConcluir)
                                  ])))
                    ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapBtnConcluir() {
    Get.toNamed(AppRoutes.mainScreen);
  }
}
