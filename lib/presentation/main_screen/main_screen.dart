import 'controller/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:raizen_smart_squares/core/app_export.dart';
import 'package:raizen_smart_squares/widgets/custom_button.dart';
import 'package:raizen_smart_squares/widgets/custom_icon_button.dart';

class MainScreen extends GetWidget<MainController> {
  const MainScreen({
    super.key,
  });

  onTapQRCode() {
    Get.toNamed(AppRoutes.qrCodeIntroScreen);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.purple800,
            body: Container(
                margin: getMargin(top: 18),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                          width: size.width,
                          margin: getMargin(left: 21, right: 11),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding: getPadding(top: 10, bottom: 33),
                                    child: ImageView(
                                        svgPath: AssetConstant.imgMenu,
                                        height: getVerticalSize(20.00),
                                        width: getHorizontalSize(30.00))),
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: ImageView(
                                        imagePath: AssetConstant.imgImage2,
                                        height: getVerticalSize(63.00),
                                        width: getHorizontalSize(100.00))),
                                Padding(
                                    padding: getPadding(bottom: 34),
                                    child: ImageView(
                                        svgPath: AssetConstant.imgNotification,
                                        height: getVerticalSize(29.00),
                                        width: getHorizontalSize(23.00)))
                              ])),
                      Expanded(
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: SingleChildScrollView(
                                  padding: getPadding(top: 24),
                                  child: Container(
                                      height: getVerticalSize(893.00),
                                      width: size.width,
                                      child: Stack(
                                          alignment: Alignment.topCenter,
                                          children: [
                                            Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Container(
                                                    margin: getMargin(top: 10),
                                                    decoration: AppDecoration
                                                        .fillGray50
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .customBorderTL40),
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
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              21,
                                                                          top:
                                                                              55,
                                                                          right:
                                                                              18),
                                                                  child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .end,
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Container(
                                                                            child: Column(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                children: [
                                                                              Padding(padding: getPadding(right: 10), child: Text("lbl_saldo_total".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterLight15.copyWith())),
                                                                              Padding(
                                                                                  padding: getPadding(top: 16),
                                                                                  child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.max, children: [
                                                                                    ImageView(svgPath: AssetConstant.imgVector, height: getVerticalSize(31.00), width: getHorizontalSize(25.00)),
                                                                                    Padding(padding: getPadding(left: 8, top: 1, bottom: 6), child: Text("lbl_100_ra_zes".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterBold24Purple800.copyWith()))
                                                                                  ]))
                                                                            ])),
                                                                        CustomButton(
                                                                            width:
                                                                                111,
                                                                            text:
                                                                                "lbl_trocar_pontos".tr,
                                                                            margin: getMargin(top: 31, bottom: 1),
                                                                            variant: ButtonVariant.OutlineBluegray1001_2,
                                                                            shape: ButtonShape.RoundedBorder5,
                                                                            padding: ButtonPadding.PaddingAll8,
                                                                            fontStyle: ButtonFontStyle.InterBold13)
                                                                      ]))),
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.00),
                                                              width: size.width,
                                                              margin: getMargin(
                                                                  top: 19),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      color: ColorConstant
                                                                          .bluegray90066)),
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Container(
                                                                  margin: getMargin(
                                                                      left: 21,
                                                                      top: 24,
                                                                      right:
                                                                          21),
                                                                  child: Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            child: Padding(
                                                                                padding: getPadding(left: 1),
                                                                                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [
                                                                                  GestureDetector(
                                                                                      onTap: () {
                                                                                        onTapColumnvectorone();
                                                                                      },
                                                                                      child: Container(
                                                                                          decoration: AppDecoration.outlineGray100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
                                                                                          child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.end, children: [
                                                                                            Padding(padding: getPadding(left: 23, top: 12, right: 23), child: ImageView(svgPath: AssetConstant.imgVector25X20, height: getVerticalSize(25.00), width: getHorizontalSize(20.00))),
                                                                                            GestureDetector(
                                                                                                onTap: () {
                                                                                                  onTapTxtSmartsquares();
                                                                                                },
                                                                                                child: Container(width: getHorizontalSize(49.00), margin: getMargin(left: 23, top: 11, right: 23, bottom: 4), child: Text("lbl_smart_squares".tr, maxLines: null, textAlign: TextAlign.center, style: AppStyle.txtInterBold12.copyWith())))
                                                                                          ]))),
                                                                                  GestureDetector(
                                                                                      onTap: () {
                                                                                        onTapColumnminimize();
                                                                                      },
                                                                                      child: Container(
                                                                                          decoration: AppDecoration.outlineGray100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
                                                                                          child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                            Padding(padding: getPadding(left: 15, top: 12, right: 15), child: ImageView(svgPath: AssetConstant.imgMinimize, height: getVerticalSize(24.00), width: getHorizontalSize(25.00))),
                                                                                            Align(
                                                                                                alignment: Alignment.centerLeft,
                                                                                                child: GestureDetector(
                                                                                                    onTap: () {
                                                                                                      onTapTxtBenefcios2();
                                                                                                    },
                                                                                                    child: Padding(padding: getPadding(left: 15, top: 17, right: 15, bottom: 11), child: Text("lbl_benef_cios2".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterBold12.copyWith()))))
                                                                                          ]))),
                                                                                  GestureDetector(
                                                                                      onTap: () {
                                                                                        onTapColumnairplane();
                                                                                      },
                                                                                      child: Container(
                                                                                          decoration: AppDecoration.outlineGray100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
                                                                                          child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                            Padding(padding: getPadding(left: 20, top: 13, right: 20), child: ImageView(svgPath: AssetConstant.imgAirplane, height: getVerticalSize(22.00), width: getHorizontalSize(13.00))),
                                                                                            GestureDetector(
                                                                                                onTap: () {
                                                                                                  onTapTxtImpactos();
                                                                                                },
                                                                                                child: Padding(padding: getPadding(left: 20, top: 20, right: 20, bottom: 10), child: Text("lbl_impactos".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterBold12.copyWith())))
                                                                                          ])))
                                                                                ]))),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 33, right: 10),
                                                                            child: Text("lbl_desafio_di_rio".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterExtraBold16.copyWith())),
                                                                        Container(
                                                                            margin:
                                                                                getMargin(top: 12),
                                                                            decoration: AppDecoration.outlineGray100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
                                                                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.max, children: [
                                                                              Padding(padding: getPadding(left: 12, top: 32, bottom: 65), child: ImageView(svgPath: AssetConstant.imgCalendar, height: getVerticalSize(39.00), width: getHorizontalSize(37.00))),
                                                                              Container(
                                                                                  margin: getMargin(top: 23, right: 14, bottom: 8),
                                                                                  child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                    Align(alignment: Alignment.center, child: Padding(padding: getPadding(right: 5), child: Text("msg_produza_0_050kw".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterSemiBold16.copyWith()))),
                                                                                    Container(width: getHorizontalSize(224.00), margin: getMargin(top: 10, right: 9), child: Text("msg_pedale_durante".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtInterRegular15.copyWith())),
                                                                                    CustomButton(width: 111, text: "lbl_iniciar".tr, margin: getMargin(left: 10, top: 10), variant: ButtonVariant.OutlineBluegray1001_2, shape: ButtonShape.RoundedBorder5, padding: ButtonPadding.PaddingAll8, fontStyle: ButtonFontStyle.InterBold13, alignment: Alignment.centerRight)
                                                                                  ]))
                                                                            ]))
                                                                      ]))),
                                                          GestureDetector(
                                                              onTap: () {
                                                                onTapImgEnquantogasta();
                                                              },
                                                              child: Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              40,
                                                                          bottom:
                                                                              20),
                                                                  child: ImageView(
                                                                      imagePath:
                                                                          AssetConstant
                                                                              .imgEnquantogasta,
                                                                      height: getVerticalSize(
                                                                          172.00),
                                                                      width: getHorizontalSize(
                                                                          360.00))))
                                                        ]))),
                                            Align(
                                                alignment: Alignment.topCenter,
                                                child: Container(
                                                    margin: getMargin(
                                                        left: 135,
                                                        right: 135,
                                                        bottom: 10),
                                                    decoration: AppDecoration
                                                        .fillPurple800
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .circleBorder45),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          CustomIconButton(
                                                              height: 70,
                                                              width: 70,
                                                              margin: getMargin(
                                                                  all: 10),
                                                              onTap: () {
                                                                onTapQRCode();
                                                              },
                                                              child: ImageView(
                                                                  svgPath:
                                                                      AssetConstant
                                                                          .imgQrcode))
                                                        ])))
                                          ])))))
                    ]))));
  }

  onTapColumnvectorone() {
    Get.toNamed(AppRoutes.placesScreen);
  }

  onTapTxtSmartsquares() {
    Get.toNamed(AppRoutes.placesScreen);
  }

  onTapColumnminimize() {
    Get.toNamed(AppRoutes.beneficiosScreen);
  }

  onTapTxtBenefcios2() {
    Get.toNamed(AppRoutes.beneficiosScreen);
  }

  onTapColumnairplane() {
    Get.toNamed(AppRoutes.impactosScreen);
  }

  onTapTxtImpactos() {
    Get.toNamed(AppRoutes.impactosScreen);
  }

  onTapImgEnquantogasta() {
    Get.toNamed(AppRoutes.impactosScreen);
  }
}
