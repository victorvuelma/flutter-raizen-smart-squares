import 'controller/localizacao_controller.dart';
import 'package:flutter/material.dart';
import 'package:raizen_smart_squares/core/app_export.dart';
import 'package:raizen_smart_squares/widgets/custom_button.dart';

class LocalizacaoScreen extends GetWidget<LocalizacaoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: size.height,
                        width: size.width,
                        child:
                            Stack(alignment: Alignment.centerLeft, children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: ImageView(
                                  imagePath: AssetConstant.imgImage16,
                                  height: getVerticalSize(800.00),
                                  width: getHorizontalSize(360.00))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  margin: getMargin(top: 10),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: GestureDetector(
                                                onTap: () {
                                                  onTapImgArrowleft();
                                                },
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 17, right: 17),
                                                    child: ImageView(
                                                        svgPath: AssetConstant
                                                            .imgArrowleft,
                                                        height: getVerticalSize(
                                                            20.00),
                                                        width:
                                                            getHorizontalSize(
                                                                11.00))))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 98,
                                                    top: 425,
                                                    right: 98),
                                                child: ImageView(
                                                    svgPath: AssetConstant
                                                        .imgLocation,
                                                    height:
                                                        getVerticalSize(43.00),
                                                    width: getHorizontalSize(
                                                        35.00)))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                width: double.infinity,
                                                margin: getMargin(top: 119),
                                                decoration: AppDecoration
                                                    .fillPurple800
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .customBorderTL40),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  298.00),
                                                          margin: getMargin(
                                                              left: 31,
                                                              top: 27,
                                                              right: 30),
                                                          child: Text(
                                                              "msg_smart_square_vi"
                                                                  .tr,
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: AppStyle
                                                                  .txtInterSemiBold18WhiteA700
                                                                  .copyWith())),
                                                      CustomButton(
                                                          width: 257,
                                                          text:
                                                              "lbl_tra_ar_rota"
                                                                  .tr,
                                                          margin: getMargin(
                                                              left: 31,
                                                              top: 22,
                                                              right: 31,
                                                              bottom: 30))
                                                    ])))
                                      ])))
                        ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
