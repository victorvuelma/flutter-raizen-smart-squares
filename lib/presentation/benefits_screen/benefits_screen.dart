import 'package:raizen_smart_squares/data/models/offer/offer_model.dart';
import 'package:raizen_smart_squares/presentation/benefits_screen/widgets/benefits_container.dart';

import 'controller/benefits_controller.dart';
import 'package:flutter/material.dart';
import 'package:raizen_smart_squares/core/app_export.dart';

class BenefitsScreen extends GetWidget<BenefitsController> {
  const BenefitsScreen({super.key});

  void _onTapOffer(OfferModel offer) {
    Get.toNamed(AppRoutes.offerBenefitScreen, arguments: [
      offer,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return BenefitsContainerWidget(
      child: Obx(() {
        if (controller.state.value == BenefitsControllerState.success) {
          return Column(
            children: controller.offers
                .map(
                  (offer) => Container(
                    padding: const EdgeInsets.all(16),
                    child: InkWell(
                      onTap: () => _onTapOffer(offer),
                      child: ImageView(
                        url: offer.imageUrl,
                        width: context.width,
                      ),
                    ),
                  ),
                )
                .toList(growable: false),
          );
        }

        return SizedBox(
          height: context.height * 0.7,
          child: const Center(
            child: CircularProgressIndicator(
              color: ColorConstant.primary,
            ),
          ),
        );
      }),
    );
  }
}
