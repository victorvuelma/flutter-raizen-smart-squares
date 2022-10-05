import 'package:dio/dio.dart';
import 'package:raizen_smart_squares/data/models/customer/points_model.dart';
import 'package:retrofit/retrofit.dart';

part 'customer_repository.g.dart';

@RestApi()
abstract class CustomerRepository {
  factory CustomerRepository(
    Dio dio, {
    String baseUrl,
  }) = _CustomerRepository;

  @GET("/customer/points")
  Future<PointsModel> points();
}
