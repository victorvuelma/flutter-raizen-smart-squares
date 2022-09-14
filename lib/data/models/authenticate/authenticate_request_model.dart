import 'package:raizen_smart_squares/core/app_export.dart';

part 'authenticate_request_model.g.dart';

@JsonSerializable()
class AuthenticateRequestModel extends Equatable {
  final String username;

  final String password;

  const AuthenticateRequestModel({
    required this.username,
    required this.password,
  });

  @override
  List<Object> get props => [username, password];

  factory AuthenticateRequestModel.fromJson(Map<String, dynamic> json) =>
      _$AuthenticateRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$AuthenticateRequestModelToJson(this);
}
