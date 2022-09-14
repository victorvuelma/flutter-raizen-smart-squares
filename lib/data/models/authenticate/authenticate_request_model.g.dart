// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authenticate_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthenticateRequestModel _$AuthenticateRequestModelFromJson(
        Map<String, dynamic> json) =>
    AuthenticateRequestModel(
      username: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$AuthenticateRequestModelToJson(
        AuthenticateRequestModel instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };
