import 'controller/frame_six_controller.dart';
import 'package:flutter/material.dart';
import 'package:raizen_smart_squares/core/app_export.dart';

class FrameSixScreen extends GetWidget<FrameSixController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: GestureDetector(
                              onTap: () {
                                onTapIncioTelad();
                              },
                              child: Container(
                                  height: size.height,
                                  width: size.width,
                                  decoration: AppDecoration.fillPurple800,
                                  child: Stack(children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 40,
                                                top: 40,
                                                right: 40,
                                                bottom: 20),
                                            child: ImageView(
                                                imagePath:
                                                    AssetConstant.imgImage2,
                                                height: getVerticalSize(172.00),
                                                width:
                                                    getHorizontalSize(270.00))))
                                  ]))))
                    ]))))));
  }

  onTapIncioTelad() {
    Get.toNamed(AppRoutes.introScreen);
  }
}
