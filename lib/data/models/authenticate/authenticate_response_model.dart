import 'package:raizen_smart_squares/core/app_export.dart';
import 'package:raizen_smart_squares/data/models/user_profile/user_profile_model.dart';

part 'authenticate_response_model.g.dart';

@JsonSerializable()
class AuthenticateResponseModel extends Equatable {
  @JsonKey(name: 'access_token')
  final String accessToken;

  final UserProfileModel profile;

  const AuthenticateResponseModel({
    required this.accessToken,
    required this.profile,
  });

  @override
  List<Object> get props => [accessToken, profile];

  factory AuthenticateResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AuthenticateResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$AuthenticateResponseModelToJson(this);
}
