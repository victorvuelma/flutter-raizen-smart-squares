import 'controller/beneficio_resgatado_controller.dart';
import 'package:flutter/material.dart';
import 'package:raizen_smart_squares/core/app_export.dart';
import 'package:raizen_smart_squares/widgets/custom_button.dart';

class BeneficioResgatadoScreen extends GetWidget<BeneficioResgatadoController> {
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
                            mainAxisAlignment: MainAxisAlignment.start,
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
                              padding:
                                  getPadding(left: 17, top: 189, right: 17),
                              child: ImageView(
                                  svgPath: AssetConstant.imgCheckmark,
                                  height: getSize(80.00),
                                  width: getSize(80.00)))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 17, top: 42, right: 17),
                              child: Text("msg_benef_cio_resga".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterExtraBold24
                                      .copyWith()))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: getHorizontalSize(297.00),
                              margin: getMargin(left: 17, top: 52, right: 17),
                              child: Text("msg_c_digo_promocio".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style:
                                      AppStyle.txtInterSemiBold16.copyWith()))),
                      CustomButton(
                          width: 257,
                          text: "lbl_ok".tr,
                          margin: getMargin(
                              left: 17, top: 38, right: 17, bottom: 20),
                          onTap: onTapBtnOk,
                          alignment: Alignment.center)
                    ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapBtnOk() {
    Get.toNamed(AppRoutes.benefitsScren);
  }
}
