import 'package:flutter/material.dart';
import 'package:raizen_smart_squares/core/app_export.dart';
import 'package:raizen_smart_squares/presentation/benefits_screen/controller/benefits_controller.dart';

class BenefitsContainerWidget extends GetWidget<BenefitsController> {
  const BenefitsContainerWidget({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primary,
      appBar: AppBar(
        backgroundColor: ColorConstant.primary,
        foregroundColor: ColorConstant.green400,
        title: Text("lbl_benefits_title".tr),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: context.width,
            margin: const EdgeInsets.only(top: 16),
            decoration: const BoxDecoration(
              color: ColorConstant.light10,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(48),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(24),
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
                                Obx(
                                  () => Text(
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
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(),
                child,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
