import 'package:raizen_smart_squares/data/repositories/customer/customer_repository.dart';
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
      () => BenefitsController(
        benefitsPointsService: Get.find<BenefitsPointsService>(),
      ),
    );
  }
}
