// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SessionModel _$SessionModelFromJson(Map<String, dynamic> json) => SessionModel(
      id: json['id'] as String,
      startAt: DateTime.parse(json['startAt'] as String),
      endAt: json['endAt'] == null
          ? null
          : DateTime.parse(json['endAt'] as String),
      points: json['points'] as int,
      status: $enumDecode(_$SessionStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$SessionModelToJson(SessionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startAt': instance.startAt.toIso8601String(),
      'endAt': instance.endAt?.toIso8601String(),
      'points': instance.points,
      'status': _$SessionStatusEnumMap[instance.status]!,
    };

const _$SessionStatusEnumMap = {
  SessionStatus.STARTING: 'STARTING',
  SessionStatus.RUNNING: 'RUNNING',
  SessionStatus.ENDING: 'ENDING',
  SessionStatus.CLOSED: 'CLOSED',
};
