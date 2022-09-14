import '../controller/places_controller.dart';
import 'package:get/get.dart';

class PlacesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => PlacesController(),
    );
  }
}
