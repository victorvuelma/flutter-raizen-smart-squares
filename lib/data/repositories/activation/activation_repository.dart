import 'package:dio/dio.dart';
import 'package:raizen_smart_squares/data/models/activation/activation_model.dart';
import 'package:retrofit/retrofit.dart';

part 'activation_repository.g.dart';

@RestApi()
abstract class ActivationRepository {
  factory ActivationRepository(
    Dio dio, {
    String baseUrl,
  }) = _ActivationRepository;

  @POST("/customer/activate/:offerId")
  Future<ActivationModel> activateOffer({
    @Path("offerId") required String offerId,
  });
}
