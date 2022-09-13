import 'package:raizen_smart_squares/core/app_export.dart';

part 'user_profile_model.g.dart';

@JsonSerializable()
@HiveType(typeId: InternalStorageType.userProfile)
class UserProfileModel extends Equatable {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String email;

  const UserProfileModel({
    required this.id,
    required this.name,
    required this.email,
  });

  @override
  List<Object> get props => [id, name, email];

  factory UserProfileModel.fromJson(Map<String, dynamic> json) =>
      _$UserProfileModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserProfileModelToJson(this);
}
