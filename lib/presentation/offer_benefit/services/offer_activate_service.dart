import 'package:raizen_smart_squares/data/models/activation/activation_model.dart';
import 'package:raizen_smart_squares/data/repositories/activation/activation_repository.dart';

class OfferActivateService {
  final ActivationRepository _activationRepository;

  const OfferActivateService({
    required ActivationRepository activationRepository,
  }) : _activationRepository = activationRepository;

  Future<ActivationModel> activateOffer(String offerId) async {
    final activation = await _activationRepository.activateOffer(
      offerId: offerId,
    );

    return activation;
  }
}
