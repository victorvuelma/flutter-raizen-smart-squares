import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:map_launcher/map_launcher.dart' hide MapType;
import 'package:raizen_smart_squares/data/models/place/place_model.dart';

import 'controller/places_controller.dart';
import 'package:flutter/material.dart';
import 'package:raizen_smart_squares/core/app_export.dart';

class PlacesScreen extends GetWidget<PlacesController> {
  const PlacesScreen({
    super.key,
  });

  static const _kBrazil = CameraPosition(
    target: LatLng(-18.1777126, -55.5078242),
    zoom: 16,
  );

  void onTapGoBack() {
    Get.back();
  }

  onTapNavigate(PlaceModel place) async {
    final availableMaps = await MapLauncher.installedMaps;
    if (availableMaps.isEmpty) {
      Get.snackbar(
        "Não foi possível traçar a rota",
        "Nenhum aplicativo de mapas foi encontrado no dispositivo.",
      );
      return;
    }

    availableMaps.first.showMarker(
      coords: Coords(place.lat, place.lng),
      title: place.name,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Obx(
            () => GoogleMap(
              mapType: MapType.hybrid,
              initialCameraPosition: _kBrazil,
              onMapCreated: (GoogleMapController maps) =>
                  controller.mapsController.complete(maps),
              markers: Set<Marker>.of(controller.mapsMarkers),
              zoomControlsEnabled: false,
              trafficEnabled: false,
              compassEnabled: false,
            ),
          ),
          Obx(
            () => controller.hasCurrentPlace
                ? Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(32),
                      decoration: const BoxDecoration(
                        color: ColorConstant.purple800,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(32),
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            controller.currentPlace.value!.name,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtMediumTitle.copyWith(
                              color: ColorConstant.light00,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            controller.currentPlace.value!.address,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtSmallTitle.copyWith(
                              color: ColorConstant.light00,
                            ),
                          ),
                          const SizedBox(height: 24),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () => onTapNavigate(
                                controller.currentPlace.value!,
                              ),
                              style: AppStyle.btnElevatedGreen,
                              child: Text('msg_places_navigate'.tr),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                : const SizedBox(),
          ),
          Positioned(
            top: 32,
            left: 8,
            child: IconButton(
              onPressed: onTapGoBack,
              icon: const Icon(
                LucideIcons.chevronLeft,
                color: ColorConstant.purple800,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
