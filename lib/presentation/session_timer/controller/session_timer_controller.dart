import 'dart:async';

import '/core/app_export.dart';

class SessionTimerController extends GetxController {
  static const oneSecond = Duration(seconds: 1);

  Duration _duration = const Duration();
  Timer? _timer;

  final duration = RxString("00:00");

  @override
  void onInit() {
    super.onInit();

    _timer = Timer.periodic(
      oneSecond,
      (_) => _updateDuration(),
    );
  }

  @override
  void onClose() {
    super.onClose();

    _timer?.cancel();
  }

  void _updateDuration() {
    _duration = _duration + oneSecond;

    duration.value = _duration.toString().split('.').first.padLeft(8, "0");
  }
}
