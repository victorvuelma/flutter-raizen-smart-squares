import 'package:raizen_smart_squares/data/models/session/session_result_model.dart';

import '/core/app_export.dart';

class SessionResultController extends GetxController {
  late final SessionResultModel result;

  @override
  void onInit() {
    super.onInit();

    result = Get.arguments.first as SessionResultModel;
  }
}
