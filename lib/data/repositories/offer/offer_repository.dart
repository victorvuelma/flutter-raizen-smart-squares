import 'package:dio/dio.dart';
import 'package:raizen_smart_squares/data/models/offer/offer_model.dart';
import 'package:retrofit/retrofit.dart';

part 'offer_repository.g.dart';

@RestApi()
abstract class OfferRepository {
  factory OfferRepository(
    Dio dio, {
    String baseUrl,
  }) = _OfferRepository;

  @GET("/offer")
  Future<List<OfferModel>> findOffers();
}
