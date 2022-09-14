import 'package:raizen_smart_squares/core/app_export.dart';
import 'package:raizen_smart_squares/data/enums/session_status/session_status.dart';

part 'session_model.g.dart';

@JsonSerializable()
class SessionModel extends Equatable {
  final String id;

  final DateTime startAt;
  final DateTime? endAt;

  final int points;

  final SessionStatus status;

  const SessionModel({
    required this.id,
    required this.startAt,
    required this.endAt,
    required this.points,
    required this.status,
  });

  @override
  List<Object?> get props => [
        id,
        startAt,
        endAt,
        points,
        status,
      ];

  factory SessionModel.fromJson(Map<String, dynamic> json) =>
      _$SessionModelFromJson(json);

  Map<String, dynamic> toJson() => _$SessionModelToJson(this);
}
