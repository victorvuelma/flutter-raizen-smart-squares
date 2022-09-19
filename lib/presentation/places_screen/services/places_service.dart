import 'package:raizen_smart_squares/data/models/place/place_model.dart';
import 'package:raizen_smart_squares/data/repositories/place/place_repository.dart';

class PlacesService {
  final PlaceRepository _placeRepository;

  const PlacesService({
    required PlaceRepository placeRepository,
  }) : _placeRepository = placeRepository;

  Future<List<PlaceModel>> find() async {
    final places = await _placeRepository.find();

    return places;
  }
}
