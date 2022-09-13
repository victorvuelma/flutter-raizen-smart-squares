import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:raizen_smart_squares/widgets/intro_step.dart';

import 'controller/intro_controller.dart';
import 'package:flutter/material.dart';
import 'package:raizen_smart_squares/core/app_export.dart';

class IntroScreen extends GetWidget<IntroController> {
  const IntroScreen({
    super.key,
  });

  void onTapSignUp() {
    Get.toNamed(AppRoutes.signUpScreen);
  }

  void onTapLogin() {
    Get.toNamed(AppRoutes.loginScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.purple800,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 32),
            constraints: BoxConstraints(minHeight: context.height - 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ImageView(
                  svgPath: AssetConstant.imgLogo,
                  width: 150,
                ),
                const SizedBox(height: 24),
                CarouselSlider(
                  carouselController: controller.carouselController,
                  options: CarouselOptions(
                    viewportFraction: 1.0,
                    enlargeCenterPage: false,
                    height: 300,
                    onPageChanged: (step, _) => controller.onStepChange(step),
                  ),
                  items: [
                    IntroStep(
                      imagePath: AssetConstant.imgIntroStepFirst,
                      text: ("msg_intro_first_step".tr),
                    ),
                    IntroStep(
                      imagePath: AssetConstant.imgIntroStepSecond,
                      text: ("msg_intro_second_step".tr),
                    ),
                    IntroStep(
                      imagePath: AssetConstant.imgIntroStepThird,
                      text: ("msg_intro_third_step".tr),
                    ),
                  ],
                ),
                Obx(
                  () => DotsIndicator(
                    dotsCount: 3,
                    position: controller.currentStep.value.toDouble(),
                    onTap: (step) => controller.goToStep(step.toInt()),
                    decorator: DotsDecorator(
                      size: const Size.square(8),
                      activeSize: const Size(40, 8),
                      color: ColorConstant.green400,
                      activeColor: ColorConstant.green400,
                      activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: onTapSignUp,
                          style: AppStyle.btnElevatedPrimary,
                          child: Text("msg_signup_now".tr),
                        ),
                      ),
                      const SizedBox(height: 24),
                      TextButton(
                        onPressed: onTapLogin,
                        style: AppStyle.btnTextTheme,
                        child: Text("msg_signup_already".tr),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
