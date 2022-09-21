import 'dart:async';

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:dio/dio.dart';
import 'package:raizen_smart_squares/data/models/session/session_result_model.dart';
import 'package:raizen_smart_squares/presentation/session_timer/services/session_end_service.dart';
import 'package:raizen_smart_squares/presentation/session_timer/services/session_timer_service.dart';
import 'package:raizen_smart_squares/widgets/snackbar.dart';

import '/core/app_export.dart';

enum SessionTimerControllerState {
  init,
  loading,
  success,
  failed,
}

class SessionTimerController extends GetxController {
  static const oneSecond = Duration(seconds: 1);
  final SessionEndService _sessionEndService;
  final SessionTimerService _sessionTimerService;

  final state =
      Rx<SessionTimerControllerState>(SessionTimerControllerState.init);

  bool get isLoading => state.value == SessionTimerControllerState.loading;

  Duration _duration = const Duration();
  Timer? _timer;
  StreamSubscription? _resultSubscription;

  final duration = RxString("00:00");

  SessionTimerController({
    required SessionEndService sessionEndService,
    required SessionTimerService sessionTimerService,
  })  : _sessionEndService = sessionEndService,
        _sessionTimerService = sessionTimerService;

  @override
  void onInit() {
    super.onInit();

    _timer = Timer.periodic(
      oneSecond,
      (_) => _updateDuration(),
    );

    _sessionTimerService.connect();

    _resultSubscription = _sessionTimerService.resultSubject.listen(
      (result) => _onSessionClose(result),
    );
  }

  @override
  void onClose() {
    super.onClose();

    _timer?.cancel();
    _sessionTimerService.close();
    _resultSubscription?.cancel();
  }

  void _updateDuration() {
    _duration = _duration + oneSecond;

    duration.value = _duration.inHours > 0
        ? _duration.toString().split('.').first.padLeft(8, "0")
        : _duration.toString().substring(2, 7);
  }

  Future<void> requestSessionEnd() async {
    try {
      state.value = SessionTimerControllerState.loading;

      await _sessionEndService.endSession();
    } on Error catch (_) {
      state.value = SessionTimerControllerState.failed;

      showAwesomeSnackbar(
        AwesomeSnackbarContent(
          title: 'Ops',
          message:
              'Não foi possível encerrar sua sessão, tente novamente mais tarde.',
          contentType: ContentType.failure,
        ),
      );
    } on DioError catch (_) {
      state.value = SessionTimerControllerState.failed;

      showAwesomeSnackbar(
        AwesomeSnackbarContent(
          title: 'Ops',
          message:
              'Não foi possível encerrar sua sessão, tente novamente mais tarde.',
          contentType: ContentType.failure,
        ),
      );
    }
  }

  void _onSessionClose(SessionResultModel result) {
    Get.offNamed(AppRoutes.sessionResultScreen, arguments: [
      result,
    ]);
  }
}
