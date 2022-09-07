import '../impactos_screen/widgets/impactos_item_widget.dart';
import 'controller/impactos_controller.dart';
import 'models/impactos_item_model.dart';
import 'package:flutter/material.dart';
import 'package:raizen_smart_squares/core/app_export.dart';

class ImpactosScreen extends GetWidget<ImpactosController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.purple800,
            body: Container(
                margin: getMargin(top: 15),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: double.infinity,
                              decoration: AppDecoration.fillPurple800,
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
                                                padding: getPadding(
                                                    left: 13, right: 13),
                                                child: ImageView(
                                                    svgPath: AssetConstant
                                                        .imgArrowleftLightGreen400,
                                                    height:
                                                        getVerticalSize(20.00),
                                                    width: getHorizontalSize(
                                                        11.00))))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 13, top: 3, right: 13),
                                            child: Text("lbl_impactos2".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterExtraBold32
                                                    .copyWith()))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            width: double.infinity,
                                            margin: getMargin(top: 48),
                                            decoration: AppDecoration.fillGray50
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .customBorderTL40),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                      width: getHorizontalSize(
                                                          308.00),
                                                      margin: getMargin(
                                                          left: 13,
                                                          top: 16,
                                                          right: 13),
                                                      child: Text(
                                                          "msg_entenda_o_quant"
                                                              .tr,
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtInterSemiBold16
                                                              .copyWith())),
                                                  Container(
                                                      height:
                                                          getVerticalSize(1.00),
                                                      width: size.width,
                                                      margin:
                                                          getMargin(top: 22),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .bluegray90066)),
                                                  Container(
                                                      margin: getMargin(
                                                          left: 13,
                                                          top: 26,
                                                          right: 12,
                                                          bottom: 1019),
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
                                                                    "lbl_meus_dados"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterExtraBold16
                                                                        .copyWith())),
                                                            Container(
                                                                margin:
                                                                    getMargin(
                                                                        top:
                                                                            17),
                                                                decoration:
                                                                    AppDecoration
                                                                        .outlineBluegray10012,
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Container(
                                                                          width: getHorizontalSize(
                                                                              125.00),
                                                                          margin: getMargin(
                                                                              left:
                                                                                  18,
                                                                              top:
                                                                                  21,
                                                                              bottom:
                                                                                  42),
                                                                          child: Text(
                                                                              "msg_produ_o_hoje_g".tr,
                                                                              maxLines: null,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtInterMedium16Purple800.copyWith())),
                                                                      Container(
                                                                          width: getHorizontalSize(
                                                                              73.00),
                                                                          margin: getMargin(
                                                                              top:
                                                                                  24,
                                                                              right:
                                                                                  29,
                                                                              bottom:
                                                                                  34),
                                                                          child: Text(
                                                                              "msg_0_050_kw_0_2_kw".tr,
                                                                              maxLines: null,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtInterMedium16Purple800.copyWith()))
                                                                    ])),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left: 5,
                                                                        top:
                                                                            16),
                                                                    child: ImageView(
                                                                        imagePath:
                                                                            AssetConstant
                                                                                .imgImage23,
                                                                        height: getVerticalSize(
                                                                            198.00),
                                                                        width: getHorizontalSize(
                                                                            330.00)))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            12,
                                                                        top: 25,
                                                                        right:
                                                                            8),
                                                                    child: Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment
                                                                                .spaceBetween,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .center,
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Container(
                                                                              decoration: AppDecoration.outlineGray100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
                                                                              child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                Padding(padding: getPadding(left: 14, top: 15, right: 14), child: ImageView(svgPath: AssetConstant.imgVector14X30, height: getVerticalSize(14.00), width: getHorizontalSize(30.00))),
                                                                                Container(width: getHorizontalSize(67.00), margin: getMargin(left: 14, top: 12, right: 12), child: Text("lbl_redu_o_de_c02".tr, maxLines: null, textAlign: TextAlign.center, style: AppStyle.txtInterBold12.copyWith())),
                                                                                Padding(padding: getPadding(left: 14, top: 32, right: 14, bottom: 14), child: Text("lbl_xxx".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterExtraBold14.copyWith()))
                                                                              ])),
                                                                          Container(
                                                                              height: getVerticalSize(133.00),
                                                                              width: getHorizontalSize(205.00),
                                                                              child: Obx(() => ListView.builder(
                                                                                  scrollDirection: Axis.horizontal,
                                                                                  physics: BouncingScrollPhysics(),
                                                                                  itemCount: controller.impactosModelObj.value.impactosItemList.length,
                                                                                  itemBuilder: (context, index) {
                                                                                    ImpactosItemModel model = controller.impactosModelObj.value.impactosItemList[index];
                                                                                    return ImpactosItemWidget(model);
                                                                                  })))
                                                                        ])))
                                                          ]))
                                                ])))
                                  ])))
                    ]))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
