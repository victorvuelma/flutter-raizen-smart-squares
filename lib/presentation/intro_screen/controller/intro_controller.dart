import 'package:carousel_slider/carousel_controller.dart';

import '/core/app_export.dart';

class IntroController extends GetxController {
  final CarouselController carouselController = CarouselController();

  final currentStep = 0.obs;

  onStepChange(int step) {
    currentStep.value = step;
  }

  goToStep(int step) {
    carouselController.animateToPage(step);
  }
}
