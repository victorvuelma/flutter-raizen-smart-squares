import 'package:raizen_smart_squares/core/app_export.dart';

part 'activation_model.g.dart';

@JsonSerializable()
class ActivationModel extends Equatable {
  final String id;

  final DateTime when;

  final String? code;
  final String offerId;

  const ActivationModel({
    required this.id,
    required this.when,
    required this.code,
    required this.offerId,
  });

  @override
  List<Object?> get props => [
        id,
        when,
        code,
        offerId,
      ];

  factory ActivationModel.fromJson(Map<String, dynamic> json) =>
      _$ActivationModelFromJson(json);

  Map<String, dynamic> toJson() => _$ActivationModelToJson(this);
}
