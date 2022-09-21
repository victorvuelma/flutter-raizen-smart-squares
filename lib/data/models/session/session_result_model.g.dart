// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SessionResultModel _$SessionResultModelFromJson(Map<String, dynamic> json) =>
    SessionResultModel(
      cycles: json['cycles'] as int,
      potency: (json['potency'] as num).toDouble(),
      points: json['points'] as int,
    );

Map<String, dynamic> _$SessionResultModelToJson(SessionResultModel instance) =>
    <String, dynamic>{
      'cycles': instance.cycles,
      'potency': instance.potency,
      'points': instance.points,
    };
