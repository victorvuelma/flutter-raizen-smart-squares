import 'package:raizen_smart_squares/data/models/offer/offer_model.dart';

import '../../../data/repositories/offer/offer_repository.dart';

class BenefitsOffersService {
  final OfferRepository _offerRepository;

  const BenefitsOffersService({
    required OfferRepository offerRepository,
  }) : _offerRepository = offerRepository;

  Future<List<OfferModel>> getOffers() async {
    final offers = await _offerRepository.findOffers();

    return offers;
  }
}
