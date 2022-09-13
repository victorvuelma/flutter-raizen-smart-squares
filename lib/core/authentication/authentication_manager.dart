// ignore_for_file: constant_identifier_names

import 'package:raizen_smart_squares/core/app_export.dart';
import 'package:raizen_smart_squares/data/models/user_profile/user_profile_model.dart';

const ACCESS_TOKEN_KEY = 'ACCESS_TOKEN';
const USER_PROFILE_KEY = 'USER_PROFILE';

class AuthenticationManager {
  final SecureStorage _secureStorage;
  final Box<UserProfileModel> userProfileBox;

  String? accessToken;

  UserProfileModel? userProfile;

  bool get isAuthenticated => accessToken != null && userProfile != null;

  AuthenticationManager({
    required InternalStorage internalStorage,
    required SecureStorage secureStorage,
  })  : userProfileBox = internalStorage.box<UserProfileModel>(
          InternalStorageBox.userProfile,
        ),
        _secureStorage = secureStorage;

  Future<void> recoverFromStorage() async {
    final token = await _secureStorage.get(ACCESS_TOKEN_KEY);
    if (token?.isNotEmpty == true) {
      final profile = userProfileBox.get(USER_PROFILE_KEY);

      if (profile != null) {
        accessToken = token;
        userProfile = profile;
      }
    }
  }

  Future<void> authenticated({
    required String token,
    required UserProfileModel profile,
  }) async {
    accessToken = token;
    userProfile = profile;

    await Future.wait([
      _secureStorage.set(ACCESS_TOKEN_KEY, token),
      userProfileBox.put(USER_PROFILE_KEY, profile)
    ]);
  }

  Future<void> clearAutentication() async {
    await Future.wait([
      _secureStorage.delete(ACCESS_TOKEN_KEY),
      userProfileBox.delete(USER_PROFILE_KEY)
    ]);

    accessToken = null;
    userProfile = null;
  }
}
