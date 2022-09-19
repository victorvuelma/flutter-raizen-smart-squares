import 'package:raizen_smart_squares/presentation/qr_code_scanner/binding/qr_code_scanner_binding.dart';
import 'package:raizen_smart_squares/presentation/qr_code_scanner/qr_code_scanner_screen.dart';
import 'package:raizen_smart_squares/presentation/resultado_exercicio_screen/resultado_exercicio_screen.dart';
import 'package:raizen_smart_squares/presentation/resultado_exercicio_screen/binding/resultado_exercicio_binding.dart';
import 'package:raizen_smart_squares/presentation/places_screen/places_screen.dart';
import 'package:raizen_smart_squares/presentation/places_screen/binding/places_binding.dart';
import 'package:raizen_smart_squares/presentation/cadastro_screen/cadastro_screen.dart';
import 'package:raizen_smart_squares/presentation/cadastro_screen/binding/cadastro_binding.dart';
import 'package:raizen_smart_squares/presentation/beneficios_screen/beneficios_screen.dart';
import 'package:raizen_smart_squares/presentation/beneficios_screen/binding/beneficios_binding.dart';
import 'package:raizen_smart_squares/presentation/splash_screen/binding/splash_binding.dart';
import 'package:raizen_smart_squares/presentation/splash_screen/splash_screen.dart';
import 'package:raizen_smart_squares/presentation/main_screen/main_screen.dart';
import 'package:raizen_smart_squares/presentation/main_screen/binding/main_binding.dart';
import 'package:raizen_smart_squares/presentation/login_screen/login_screen.dart';
import 'package:raizen_smart_squares/presentation/login_screen/binding/login_binding.dart';
import 'package:raizen_smart_squares/presentation/sele_o_beneficio_screen/sele_o_beneficio_screen.dart';
import 'package:raizen_smart_squares/presentation/sele_o_beneficio_screen/binding/sele_o_beneficio_binding.dart';
import 'package:raizen_smart_squares/presentation/frame_six_screen/frame_six_screen.dart';
import 'package:raizen_smart_squares/presentation/frame_six_screen/binding/frame_six_binding.dart';
import 'package:raizen_smart_squares/presentation/beneficio_resgatado_screen/beneficio_resgatado_screen.dart';
import 'package:raizen_smart_squares/presentation/beneficio_resgatado_screen/binding/beneficio_resgatado_binding.dart';
import 'package:raizen_smart_squares/presentation/sele_o_beneficio_one_screen/sele_o_beneficio_one_screen.dart';
import 'package:raizen_smart_squares/presentation/sele_o_beneficio_one_screen/binding/sele_o_beneficio_one_binding.dart';
import 'package:raizen_smart_squares/presentation/session_start_screen/session_start_screen.dart';
import 'package:raizen_smart_squares/presentation/session_start_screen/binding/session_start_binding.dart';
import 'package:raizen_smart_squares/presentation/sele_o_beneficio_two_screen/sele_o_beneficio_two_screen.dart';
import 'package:raizen_smart_squares/presentation/sele_o_beneficio_two_screen/binding/sele_o_beneficio_two_binding.dart';
import 'package:raizen_smart_squares/presentation/session_timer/session_timer_screen.dart';
import 'package:raizen_smart_squares/presentation/session_timer/binding/session_timer_binding.dart';
import 'package:raizen_smart_squares/presentation/sele_o_beneficio_three_screen/sele_o_beneficio_three_screen.dart';
import 'package:raizen_smart_squares/presentation/sele_o_beneficio_three_screen/binding/sele_o_beneficio_three_binding.dart';
import 'package:raizen_smart_squares/presentation/impactos_screen/impactos_screen.dart';
import 'package:raizen_smart_squares/presentation/impactos_screen/binding/impactos_binding.dart';
import 'package:raizen_smart_squares/presentation/qr_code_intro/qr_code_intro_screen.dart';
import 'package:raizen_smart_squares/presentation/qr_code_intro/binding/qr_code_intro_binding.dart';
import 'package:raizen_smart_squares/presentation/intro_screen/intro_screen.dart';
import 'package:raizen_smart_squares/presentation/intro_screen/binding/intro_binding.dart';

import 'package:raizen_smart_squares/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:raizen_smart_squares/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  const AppRoutes._();

  static String splashScreen = '/splash_screen';

  static String introScreen = '/intro_screen';

  static String loginScreen = '/login_screen';

  static String signUpScreen = '/signup_screen';

  static String mainScreen = '/main_screen';

  static String qrCodeIntroScreen = '/qr_code_intro_screen';

  static String qrCodeScannerScreen = '/qr_code_scanner_screen';

  static String placesScreen = '/places_screen';

  static String sessionStartScreen = '/session_start_screen';

  static String sessionTimerScreen = '/session_timer_screen';

  static String resultadoExercicioScreen = '/resultado_exercicio_screen';

  static String beneficiosScreen = '/beneficios_screen';

  static String testeScreen = '/teste_screen';

  static String seleOBeneficioScreen = '/sele_o_beneficio_screen';

  static String frameSixScreen = '/frame_six_screen';

  static String beneficioResgatadoScreen = '/beneficio_resgatado_screen';

  static String seleOBeneficioOneScreen = '/sele_o_beneficio_one_screen';

  static String seleOBeneficioTwoScreen = '/sele_o_beneficio_two_screen';

  static String seleOBeneficioThreeScreen = '/sele_o_beneficio_three_screen';

  static String impactosScreen = '/impactos_screen';

  static String telaPrincipalOneScreen = '/tela_principal_one_screen';

  static String apresentaOAppTwoScreen = '/apresenta_o_app_two_screen';

  static String apresentaOAppThreeScreen = '/apresenta_o_app_three_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = splashScreen;

  static List<GetPage> pages = [
    GetPage(
      name: resultadoExercicioScreen,
      page: () => ResultadoExercicioScreen(),
      bindings: [
        ResultadoExercicioBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => CadastroScreen(),
      bindings: [
        CadastroBinding(),
      ],
    ),
    GetPage(
      name: beneficiosScreen,
      page: () => BeneficiosScreen(),
      bindings: [
        BeneficiosBinding(),
      ],
    ),
    GetPage(
      name: seleOBeneficioScreen,
      page: () => SeleOBeneficioScreen(),
      bindings: [
        SeleOBeneficioBinding(),
      ],
    ),
    GetPage(
      name: frameSixScreen,
      page: () => FrameSixScreen(),
      bindings: [
        FrameSixBinding(),
      ],
    ),
    GetPage(
      name: beneficioResgatadoScreen,
      page: () => BeneficioResgatadoScreen(),
      bindings: [
        BeneficioResgatadoBinding(),
      ],
    ),
    GetPage(
      name: seleOBeneficioOneScreen,
      page: () => SeleOBeneficioOneScreen(),
      bindings: [
        SeleOBeneficioOneBinding(),
      ],
    ),
    GetPage(
      name: seleOBeneficioTwoScreen,
      page: () => SeleOBeneficioTwoScreen(),
      bindings: [
        SeleOBeneficioTwoBinding(),
      ],
    ),
    GetPage(
      name: seleOBeneficioThreeScreen,
      page: () => SeleOBeneficioThreeScreen(),
      bindings: [
        SeleOBeneficioThreeBinding(),
      ],
    ),
    GetPage(
      name: impactosScreen,
      page: () => ImpactosScreen(),
      bindings: [
        ImpactosBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => const SplashScreen(),
      bindings: [SplashBinding()],
    ),
    GetPage(
      name: introScreen,
      page: () => const IntroScreen(),
      bindings: [IntroBinding()],
    ),
    GetPage(
      name: loginScreen,
      page: () => const LoginScreen(),
      bindings: [LoginBinding()],
    ),
    GetPage(
      name: mainScreen,
      page: () => const MainScreen(),
      bindings: [MainBinding()],
    ),
    GetPage(
      name: qrCodeIntroScreen,
      page: () => const QRCodeIntroScreen(),
      bindings: [QRCodeIntroBinding()],
    ),
    GetPage(
      name: qrCodeScannerScreen,
      page: () => const QRCodeScannerScreen(),
      bindings: [QRCodeScannerBinding()],
    ),
    GetPage(
      name: placesScreen,
      page: () => const PlacesScreen(),
      bindings: [PlacesBinding()],
    ),
    GetPage(
      name: sessionStartScreen,
      page: () => const SessionStartScreen(),
      bindings: [SessionStartBinding()],
    ),
    GetPage(
      name: sessionTimerScreen,
      page: () => const SessionTimerScreen(),
      bindings: [SessionTimerBinding()],
    ),
  ];
}
