import 'package:raizen_smart_squares/data/api/io_client.dart';
import 'package:raizen_smart_squares/data/repositories/session/session_repository.dart';
import 'package:raizen_smart_squares/presentation/session_timer/services/session_end_service.dart';

import '../controller/session_timer_controller.dart';
import 'package:get/get.dart';

import '../services/session_timer_service.dart';

class SessionTimerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => SessionEndService(
        sessionRepository: Get.find<SessionRepository>(),
      ),
    );
    Get.lazyPut(
      () => SessionTimerService(
        ioClient: Get.find<IoClient>(),
      ),
    );

    Get.lazyPut(
      () => SessionTimerController(
        sessionEndService: Get.find<SessionEndService>(),
        sessionTimerService: Get.find<SessionTimerService>(),
      ),
    );
  }
}
