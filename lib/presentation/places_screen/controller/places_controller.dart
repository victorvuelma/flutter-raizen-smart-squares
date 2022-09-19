import 'dart:async';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:raizen_smart_squares/data/models/place/place_model.dart';
import 'package:raizen_smart_squares/presentation/places_screen/services/places_service.dart';

import '/core/app_export.dart';

class PlacesController extends GetxController {
  final mapsController = Completer<GoogleMapController>();
  final mapsMarkers = RxList<Marker>.empty();

  final currentPlace = Rxn<PlaceModel?>();
  final places = RxList<PlaceModel>.empty();

  final PlacesService _placesService;

  bool get hasCurrentPlace => currentPlace.value != null;

  PlacesController({
    required PlacesService placesService,
  }) : _placesService = placesService;

  @override
  void onInit() {
    super.onInit();

    ever(places, (places) {
      mapsMarkers.value = places
          .map((p) => Marker(
                markerId: MarkerId(p.id),
                position: LatLng(p.lat, p.lng),
              ))
          .toList(growable: false);
    });
    ever(currentPlace, (place) async {
      if (place == null) {
        return;
      }

      final controller = await mapsController.future;
      final position = CameraPosition(
        bearing: 192.8334901395799,
        target: LatLng(place.lat, place.lng),
        zoom: 16,
      );
      final camera = CameraUpdate.newCameraPosition(position);

      controller.moveCamera(camera);
    });

    fetchPlaces();
  }

  Future<void> fetchPlaces() async {
    final places = await _placesService.find();

    this.places.value = places;
    selectPlace(0);
  }

  Future<void> selectPlace(int index) async {
    final place = places[index];

    currentPlace.value = place;
  }
}
