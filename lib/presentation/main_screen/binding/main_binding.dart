import 'package:raizen_smart_squares/data/repositories/customer/customer_repository.dart';
import 'package:raizen_smart_squares/presentation/main_screen/services/main_points_service.dart';

import '../controller/main_controller.dart';
import 'package:get/get.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => MainPointsService(
        customerRepository: Get.find<CustomerRepository>(),
      ),
    );

    Get.lazyPut(
      () => MainController(
        mainPointsService: Get.find<MainPointsService>(),
      ),
    );
  }
}
