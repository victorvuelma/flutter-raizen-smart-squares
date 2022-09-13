// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authenticate_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthenticateResponseModel _$AuthenticateResponseModelFromJson(
        Map<String, dynamic> json) =>
    AuthenticateResponseModel(
      accessToken: json['access_token'] as String,
      profile:
          UserProfileModel.fromJson(json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuthenticateResponseModelToJson(
        AuthenticateResponseModel instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'profile': instance.profile,
    };
