import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:dio/dio.dart';
import 'package:raizen_smart_squares/data/models/offer/offer_model.dart';
import 'package:raizen_smart_squares/presentation/offer_benefit/services/offer_activate_service.dart';
import 'package:raizen_smart_squares/widgets/snackbar.dart';

import '/core/app_export.dart';

enum OfferBenefitControllerState {
  init,
  loading,
  success,
  error,
}

class OfferBenefitController extends GetxController {
  final OfferActivateService _offerActivateService;

  late final OfferModel offer;
  final state =
      Rx<OfferBenefitControllerState>(OfferBenefitControllerState.init);

  bool get isLoading => state.value == OfferBenefitControllerState.loading;

  OfferBenefitController({
    required OfferActivateService offerActivateService,
  }) : _offerActivateService = offerActivateService;

  @override
  void onInit() {
    super.onInit();

    offer = Get.arguments.first as OfferModel;
  }

  Future<void> activateOffer() async {
    try {
      state.value = OfferBenefitControllerState.loading;

      final activation = await _offerActivateService.activateOffer(offer.id);

      state.value = OfferBenefitControllerState.success;
    } on Error catch (_) {
      state.value = OfferBenefitControllerState.error;

      showAwesomeSnackbar(
        AwesomeSnackbarContent(
          title: 'Ops',
          message:
              'Não foi possível resgatar sua oferta, tente novamente mais tarde.',
          contentType: ContentType.failure,
        ),
      );
    } on DioError catch (_) {
      state.value = OfferBenefitControllerState.error;

      showAwesomeSnackbar(
        AwesomeSnackbarContent(
          title: 'Ops',
          message:
              'Não foi possível resgatar sua oferta, tente novamente mais tarde.',
          contentType: ContentType.failure,
        ),
      );
    }
  }
}
