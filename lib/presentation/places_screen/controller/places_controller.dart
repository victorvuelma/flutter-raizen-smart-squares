import 'dart:async';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:raizen_smart_squares/data/models/place/place_model.dart';

import '/core/app_export.dart';

class PlacesController extends GetxController {
  Completer<GoogleMapController> mapsController = Completer();

  final Rx<PlaceModel> currentPlace = PlaceModel(
    id: '41aa5635-1e66-42ea-a654-43c852a70f19',
    name: 'R. Diácono Jair de Oliveira',
    address: 'Praça "Prof. Dr. Duvilio Aldo Ometto"',
    lat: 22.6903471,
    lng: -47.6295621,
  ).obs;
}
