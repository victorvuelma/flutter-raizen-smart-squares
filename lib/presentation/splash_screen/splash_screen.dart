import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:raizen_smart_squares/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primary,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 64, vertical: 128),
        child: Center(
          child: ImageView(
            svgPath: AssetConstant.imgLogo,
          ),
        ),
      ),
    );
  }
}
