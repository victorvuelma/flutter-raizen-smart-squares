import 'package:raizen_smart_squares/core/app_export.dart';

part 'place_model.g.dart';

@JsonSerializable()
class PlaceModel extends Equatable {
  final String id;

  final String name;
  final String address;

  final double lat;
  final double lng;

  const PlaceModel({
    required this.id,
    required this.name,
    required this.address,
    required this.lat,
    required this.lng,
  });

  @override
  bool? get stringify => true;

  @override
  List<Object?> get props => [
        id,
        name,
        address,
        lat,
        lng,
      ];

  factory PlaceModel.fromJson(Map<String, dynamic> json) =>
      _$PlaceModelFromJson(json);

  Map<String, dynamic> toJson() => _$PlaceModelToJson(this);
}
