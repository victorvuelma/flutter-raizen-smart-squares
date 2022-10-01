import 'package:raizen_smart_squares/data/repositories/customer/customer_repository.dart';

class MainPointsService {
  final CustomerRepository _customerRepository;

  const MainPointsService({
    required CustomerRepository customerRepository,
  }) : _customerRepository = customerRepository;

  Future<int> getPoints() async {
    final points = await _customerRepository.points();

    return points.points;
  }
}