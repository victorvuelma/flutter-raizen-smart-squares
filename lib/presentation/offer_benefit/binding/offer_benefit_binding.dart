import 'package:raizen_smart_squares/data/repositories/activation/activation_repository.dart';
import 'package:raizen_smart_squares/presentation/offer_benefit/services/offer_activate_service.dart';

import '../controller/offer_benefit_controller.dart';
import 'package:get/get.dart';

class SeleOBeneficioBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => OfferActivateService(
        activationRepository: Get.find<ActivationRepository>(),
      ),
    );

    Get.lazyPut(
      () => OfferBenefitController(
        offerActivateService: Get.find<OfferActivateService>(),
      ),
    );
  }
}
