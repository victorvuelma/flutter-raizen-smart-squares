import 'package:raizen_smart_squares/core/app_export.dart';

part 'points_model.g.dart';

@JsonSerializable()
class PointsModel extends Equatable {
  final int points;

  const PointsModel({
    required this.points,
  });

  @override
  List<Object?> get props => [
        points,
      ];

  factory PointsModel.fromJson(Map<String, dynamic> json) =>
      _$PointsModelFromJson(json);

  Map<String, dynamic> toJson() => _$PointsModelToJson(this);
}
