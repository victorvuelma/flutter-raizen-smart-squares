import 'package:raizen_smart_squares/data/repositories/place/place_repository.dart';
import 'package:raizen_smart_squares/presentation/places_screen/services/places_service.dart';

import '../controller/places_controller.dart';
import 'package:get/get.dart';

class PlacesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => PlacesService(
        placeRepository: Get.find<PlaceRepository>(),
      ),
    );

    Get.lazyPut(
      () => PlacesController(
        placesService: Get.find<PlacesService>(),
      ),
    );
  }
}
