import 'package:dio/dio.dart';
import 'package:raizen_smart_squares/data/models/place/place_model.dart';
import 'package:retrofit/retrofit.dart';

part 'place_repository.g.dart';

@RestApi()
abstract class PlaceRepository {
  factory PlaceRepository(
    Dio dio, {
    String baseUrl,
  }) = _PlaceRepository;

  @GET("/place")
  Future<List<PlaceModel>> find();
}
