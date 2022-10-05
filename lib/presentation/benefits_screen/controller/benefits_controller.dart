import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:dio/dio.dart';
import 'package:raizen_smart_squares/data/models/offer/offer_model.dart';
import 'package:raizen_smart_squares/presentation/benefits_screen/services/benefits_points_service.dart';
import 'package:raizen_smart_squares/widgets/snackbar.dart';

import '../services/benefits_offers_service.dart';
import '/core/app_export.dart';

enum BenefitsControllerState {
  init,
  loading,
  success,
  failed,
}

class BenefitsController extends GetxController {
  final BenefitsOffersService _benefitsOffersService;
  final BenefitsPointsService _benefitsPointsService;

  final RxInt points = RxInt(0);

  final RxList<OfferModel> offers = RxList<OfferModel>();

  final state = Rx<BenefitsControllerState>(BenefitsControllerState.init);

  bool get isLoading => state.value == BenefitsControllerState.loading;

  BenefitsController({
    required BenefitsOffersService benefitsOffersService,
    required BenefitsPointsService benefitsPointsService,
  })  : _benefitsOffersService = benefitsOffersService,
        _benefitsPointsService = benefitsPointsService;

  @override
  void onInit() {
    super.onInit();

    getPoints();
    getOffers();
  }

  Future<void> getPoints() async {
    try {
      final customerPoints = await _benefitsPointsService.getPoints();

      points.value = customerPoints;
    } on Error catch (_) {
      showAwesomeSnackbar(
        AwesomeSnackbarContent(
          title: 'Ops',
          message:
              'Não foi possível atualizar seu total de raízes, tente novamente mais tarde.',
          contentType: ContentType.failure,
        ),
      );
    } on DioError catch (_) {
      showAwesomeSnackbar(
        AwesomeSnackbarContent(
          title: 'Ops',
          message:
              'Não foi possível atualizar seu total de raízes, tente novamente mais tarde.',
          contentType: ContentType.failure,
        ),
      );
    }
  }

  Future<void> getOffers() async {
    try {
      state.value = BenefitsControllerState.loading;

      final benefitsOffers = await _benefitsOffersService.getOffers();
      offers.value = benefitsOffers;

      state.value = BenefitsControllerState.success;
    } on Error catch (_) {
      state.value = BenefitsControllerState.failed;

      showAwesomeSnackbar(
        AwesomeSnackbarContent(
          title: 'Ops',
          message:
              'Não foi possível obter as ofertas, tente novamente mais tarde.',
          contentType: ContentType.failure,
        ),
      );
    } on DioError catch (_) {
      state.value = BenefitsControllerState.failed;

      showAwesomeSnackbar(
        AwesomeSnackbarContent(
          title: 'Ops',
          message:
              'Não foi possível obter as ofertas, tente novamente mais tarde.',
          contentType: ContentType.failure,
        ),
      );
    }
  }
}
