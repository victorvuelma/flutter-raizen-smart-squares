import 'package:raizen_smart_squares/core/app_export.dart';

part 'session_result_model.g.dart';

@JsonSerializable()
class SessionResultModel extends Equatable {
  final int cycles;
  final double potency;
  final int points;

  const SessionResultModel({
    required this.cycles,
    required this.potency,
    required this.points,
  });

  @override
  List<Object?> get props => [
        cycles,
        potency,
        points,
      ];

  factory SessionResultModel.fromJson(Map<String, dynamic> json) =>
      _$SessionResultModelFromJson(json);

  Map<String, dynamic> toJson() => _$SessionResultModelToJson(this);
}
