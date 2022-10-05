import 'package:raizen_smart_squares/presentation/benefits_screen/widgets/benefits_container.dart';

import 'controller/offer_benefit_controller.dart';
import 'package:flutter/material.dart';
import 'package:raizen_smart_squares/core/app_export.dart';

class OfferBenefitScreen extends GetWidget<OfferBenefitController> {
  const OfferBenefitScreen({
    super.key,
  });

  void onTapActivate() {
    controller.activateOffer();
  }

  @override
  Widget build(BuildContext context) {
    return BenefitsContainerWidget(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 24),
        child: Column(
          children: [
            ImageView(
              url: controller.offer.imageUrl,
              width: context.width,
            ),
            const SizedBox(height: 40),
            Container(
              width: context.width,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: ColorConstant.light50,
                border: Border.all(
                  width: 1,
                  color: ColorConstant.light100,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              child: Text(
                "lbl_total_points".trParams(
                  {
                    "amount": controller.offer.cost.toString(),
                    "pt": controller.offer.cost == 1
                        ? "lbl_point".tr
                        : "lbl_points".tr,
                  },
                ).toUpperCase(),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: Obx(
                () => ElevatedButton(
                  onPressed: controller.isLoading ? null : onTapActivate,
                  style: AppStyle.btnElevatedGreen,
                  child: Text("lbl_offer_activate".tr.toUpperCase()),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
