import 'package:raizen_smart_squares/core/app_export.dart';
import 'package:raizen_smart_squares/data/models/user_profile/user_profile_model.dart';

class InternalStorage {
  Future<void> init() async {
    Hive.registerAdapter(UserProfileModelAdapter());

    await Hive.openBox<UserProfileModel>(
      InternalStorageBox.userProfile,
    );
  }

  Box<T> box<T>(String name) {
    return Hive.box<T>(name);
  }
}
