import 'package:raizen_smart_squares/core/app_export.dart';

part 'partner_model.g.dart';

@JsonSerializable()
class PartnerModel extends Equatable {
  final String id;

  final String name;
  final String? description;

  final String imageUrl;

  const PartnerModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    this.description,
  });

  @override
  bool? get stringify => true;

  @override
  List<Object?> get props => [
        id,
        name,
        imageUrl,
        description,
      ];

  factory PartnerModel.fromJson(Map<String, dynamic> json) =>
      _$PartnerModelFromJson(json);

  Map<String, dynamic> toJson() => _$PartnerModelToJson(this);
}
