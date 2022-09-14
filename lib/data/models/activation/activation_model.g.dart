// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActivationModel _$ActivationModelFromJson(Map<String, dynamic> json) =>
    ActivationModel(
      id: json['id'] as String,
      when: DateTime.parse(json['when'] as String),
      code: json['code'] as String?,
      offerId: json['offerId'] as String,
    );

Map<String, dynamic> _$ActivationModelToJson(ActivationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'when': instance.when.toIso8601String(),
      'code': instance.code,
      'offerId': instance.offerId,
    };
