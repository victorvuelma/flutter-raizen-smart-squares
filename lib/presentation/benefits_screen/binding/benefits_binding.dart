import 'package:raizen_smart_squares/data/repositories/customer/customer_repository.dart';
import 'package:raizen_smart_squares/data/repositories/offer/offer_repository.dart';
import 'package:raizen_smart_squares/presentation/benefits_screen/services/benefits_offers_service.dart';
import 'package:raizen_smart_squares/presentation/benefits_screen/services/benefits_points_service.dart';

import '../controller/benefits_controller.dart';
import 'package:get/get.dart';

class BenefitsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => BenefitsPointsService(
        customerRepository: Get.find<CustomerRepository>(),
      ),
    );
    Get.lazyPut(
      () => BenefitsOffersService(
        offerRepository: Get.find<OfferRepository>(),
      ),
    );

    Get.lazyPut(
      () => BenefitsController(
        benefitsOffersService: Get.find<BenefitsOffersService>(),
        benefitsPointsService: Get.find<BenefitsPointsService>(),
      ),
    );
  }
}
