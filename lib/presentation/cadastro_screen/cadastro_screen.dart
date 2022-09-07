import 'controller/cadastro_controller.dart';
import 'package:flutter/material.dart';
import 'package:raizen_smart_squares/core/app_export.dart';
import 'package:raizen_smart_squares/widgets/custom_button.dart';
import 'package:raizen_smart_squares/widgets/custom_checkbox.dart';
import 'package:raizen_smart_squares/presentation/cadastro_conclu_do_bottomsheet/cadastro_conclu_do_bottomsheet.dart';
import 'package:raizen_smart_squares/presentation/cadastro_conclu_do_bottomsheet/controller/cadastro_conclu_do_controller.dart';

class CadastroScreen extends GetWidget<CadastroController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Padding(
                padding: getPadding(left: 13, top: 15, right: 13, bottom: 24),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                          child: SingleChildScrollView(
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                            Container(
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                  GestureDetector(
                                      onTap: () {
                                        onTapImgArrowleft();
                                      },
                                      child: Padding(
                                          padding: getPadding(right: 10),
                                          child: ImageView(
                                              svgPath:
                                                  AssetConstant.imgArrowleft,
                                              height: getVerticalSize(20.00),
                                              width:
                                                  getHorizontalSize(11.00)))),
                                  Container(
                                      margin: getMargin(top: 21),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        getPadding(right: 10),
                                                    child: Text(
                                                        "lbl_criar_conta".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterExtraBold20
                                                            .copyWith()))),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 6,
                                                        top: 33,
                                                        right: 10),
                                                    child: Text(
                                                        "lbl_nome_completo".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterMedium16
                                                            .copyWith()))),
                                            TextFormField(
                                              focusNode: FocusNode(),
                                              controller:
                                                  controller.frameOneController,
                                            ),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 6,
                                                        top: 19,
                                                        right: 10),
                                                    child: Text("lbl_cpf".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterMedium16
                                                            .copyWith()))),
                                            TextFormField(
                                              focusNode: FocusNode(),
                                              controller: controller
                                                  .frameOneOneController,
                                            ),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 6,
                                                        top: 18,
                                                        right: 10),
                                                    child: Text("lbl_g_nero".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterMedium16
                                                            .copyWith()))),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                    height:
                                                        getVerticalSize(43.00),
                                                    width: getHorizontalSize(
                                                        320.00),
                                                    margin: getMargin(
                                                        left: 6, top: 8),
                                                    child: Card(
                                                        clipBehavior:
                                                            Clip.antiAlias,
                                                        elevation: 0,
                                                        margin:
                                                            EdgeInsets.all(0),
                                                        color: ColorConstant
                                                            .whiteA700,
                                                        shape: RoundedRectangleBorder(
                                                            side: BorderSide(
                                                                color: ColorConstant
                                                                    .bluegray100,
                                                                width:
                                                                    getHorizontalSize(
                                                                        1.00)),
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    getHorizontalSize(
                                                                        2.00))),
                                                        child: Stack(children: [
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerRight,
                                                              child: Padding(
                                                                  padding: getPadding(
                                                                      left: 14,
                                                                      top: 16,
                                                                      right: 14,
                                                                      bottom:
                                                                          16),
                                                                  child: ImageView(
                                                                      svgPath:
                                                                          AssetConstant
                                                                              .imgArrowdown,
                                                                      height: getVerticalSize(
                                                                          10.00),
                                                                      width: getHorizontalSize(
                                                                          17.00))))
                                                        ])))),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 6,
                                                        top: 18,
                                                        right: 10),
                                                    child: Text("lbl_email".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterMedium16
                                                            .copyWith()))),
                                            TextFormField(
                                              focusNode: FocusNode(),
                                              controller: controller
                                                  .frameOneTwoController,
                                            ),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 6,
                                                        top: 18,
                                                        right: 10),
                                                    child: Text(
                                                        "msg_data_de_nascime"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterMedium16
                                                            .copyWith()))),
                                            TextFormField(
                                              focusNode: FocusNode(),
                                              controller: controller
                                                  .frameOneThreeController,
                                            ),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 6,
                                                        top: 18,
                                                        right: 10),
                                                    child: Text(
                                                        "lbl_telefone".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterMedium16
                                                            .copyWith()))),
                                            TextFormField(
                                              focusNode: FocusNode(),
                                              controller: controller
                                                  .frameOneFourController,
                                            ),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 6,
                                                        top: 19,
                                                        right: 10),
                                                    child: Text("lbl_senha".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterMedium16
                                                            .copyWith()))),
                                            TextFormField(
                                              focusNode: FocusNode(),
                                              controller: controller
                                                  .frameOneFiveController,
                                            ),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 6,
                                                        top: 18,
                                                        right: 10),
                                                    child: Text(
                                                        "lbl_confirmar_senha"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterMedium16
                                                            .copyWith()))),
                                            TextFormField(
                                              focusNode: FocusNode(),
                                              controller: controller
                                                  .frameOneSixController,
                                              textInputAction:
                                                  TextInputAction.done,
                                            ),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                    width: getHorizontalSize(
                                                        306.00),
                                                    margin: getMargin(
                                                        left: 6,
                                                        top: 42,
                                                        right: 13),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Obx(() =>
                                                              CustomCheckbox(
                                                                  text:
                                                                      "msg_aceito_os_termo"
                                                                          .tr,
                                                                  iconSize: 18,
                                                                  value: controller
                                                                      .checkbox
                                                                      .value,
                                                                  onChange:
                                                                      (value) {
                                                                    controller
                                                                        .checkbox
                                                                        .value = value;
                                                                  })),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 3,
                                                                      bottom:
                                                                          1),
                                                              child: Text(
                                                                  "lbl_ler_os_termos"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtInterMedium13
                                                                      .copyWith()))
                                                        ]))),
                                            CustomButton(
                                                width: 257,
                                                text: "msg_criar_minha_con".tr,
                                                margin: getMargin(
                                                    left: 39,
                                                    top: 51,
                                                    right: 30),
                                                onTap: onTapBtnCriarminhacon,
                                                alignment: Alignment.center)
                                          ]))
                                ])),
                            Padding(
                                padding: getPadding(top: 798, bottom: 100),
                                child: ImageView(
                                    svgPath: AssetConstant.imgArrowright,
                                    height: getVerticalSize(11.00),
                                    width: getHorizontalSize(7.00)))
                          ])))
                    ]))));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapBtnCriarminhacon() {
    Get.bottomSheet(
      CadastroConcluDoBottomsheet(
        Get.put(
          CadastroConcluDoController(),
        ),
      ),
      isScrollControlled: true,
    );
  }
}
