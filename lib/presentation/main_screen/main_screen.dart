import 'package:lucide_icons/lucide_icons.dart';
import 'package:raizen_smart_squares/widgets/sidebar.dart';

import 'controller/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:raizen_smart_squares/core/app_export.dart';

class MainScreen extends GetWidget<MainController> {
  const MainScreen({
    super.key,
  });

  onTapQRCode() {
    Get.toNamed(AppRoutes.qrCodeIntroScreen);
  }

  onTapBanner() {
    Get.toNamed(AppRoutes.impactosScreen);
  }

  onTapImpacts() {
    Get.toNamed(AppRoutes.impactosScreen);
  }

  onTapPlaces() {
    Get.toNamed(AppRoutes.placesScreen);
  }

  onTapBenefits() {
    Get.toNamed(AppRoutes.beneficiosScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.light10,
      drawer: const Sidebar(),
      appBar: AppBar(
        actions: [Container(width: 48)],
        toolbarHeight: 80,
        backgroundColor: ColorConstant.primary,
        foregroundColor: ColorConstant.green400,
        elevation: 0,
        title: Center(
          child: ImageView(
            svgPath: AssetConstant.imgLogo,
            height: 64,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 192,
                    width: context.width,
                    color: ColorConstant.primary,
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height: 96,
                      width: context.width,
                      decoration: const BoxDecoration(
                        color: ColorConstant.light10,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(48),
                        ),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Center(
                      child: ElevatedButton(
                        onPressed: onTapQRCode,
                        style: AppStyle.btnElevatedGreen.copyWith(
                          elevation: MaterialStateProperty.all(0),
                          padding: MaterialStateProperty.all(
                            const EdgeInsets.all(32),
                          ),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(64),
                              side: const BorderSide(
                                color: ColorConstant.primary,
                                width: 16,
                              ),
                            ),
                          ),
                        ),
                        child: const Icon(LucideIcons.qrCode, size: 56),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(24),
                child: Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_main_total_points".tr,
                              style: AppStyle.txtSmallTitle,
                            ),
                            const SizedBox(height: 16),
                            Row(
                              children: [
                                ImageView(
                                  svgPath: AssetConstant.imgRoots,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  "lbl_total_points".trParams(
                                    {
                                      "amount":
                                          controller.points.value.toString(),
                                      "pt": controller.points.value == 1
                                          ? "lbl_point".tr
                                          : "lbl_points".tr,
                                    },
                                  ).toUpperCase(),
                                  style: AppStyle.txtMediumTitle,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: onTapBenefits,
                        style: AppStyle.btnElevatedGreen,
                        child: Text('lbl_main_use_points'.tr),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(24),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: PageOption(
                        icon: LucideIcons.treeDeciduous,
                        onTap: onTapPlaces,
                        title: "lbl_main_places".tr,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: PageOption(
                        icon: LucideIcons.creditCard,
                        onTap: onTapBenefits,
                        title: "lbl_main_benefits".tr,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: PageOption(
                        icon: LucideIcons.zap,
                        onTap: onTapImpacts,
                        title: "lbl_main_impacts".tr,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: onTapBanner,
                child: ImageView(
                  imagePath: AssetConstant.imgMainBanner,
                  width: context.width,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PageOption extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  final String title;

  const PageOption({
    required this.icon,
    required this.onTap,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        color: ColorConstant.light00,
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
        border: Border.all(color: ColorConstant.light50),
      ),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Icon(
                icon,
                size: 32,
                color: ColorConstant.primary,
              ),
              const SizedBox(height: 16),
              Text(
                title,
                style: AppStyle.txtSmallTitle,
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
