import 'package:raizen_smart_squares/core/app_export.dart';
import 'package:raizen_smart_squares/data/models/partner/partner_model.dart';

part 'offer_model.g.dart';

@JsonSerializable()
class OfferModel extends Equatable {
  final String id;

  final String name;
  final String? description;

  final String imageUrl;

  final int cost;

  final PartnerModel? partner;

  const OfferModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.cost,
    required this.partner,
    this.description,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        imageUrl,
        cost,
        partner,
        description,
      ];

  factory OfferModel.fromJson(Map<String, dynamic> json) =>
      _$OfferModelFromJson(json);

  Map<String, dynamic> toJson() => _$OfferModelToJson(this);
}
