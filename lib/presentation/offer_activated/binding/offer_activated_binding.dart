import '../controller/offer_activated_controller.dart';
import 'package:get/get.dart';

class OfferActivatedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => OfferActivatedController(),
    );
  }
}
