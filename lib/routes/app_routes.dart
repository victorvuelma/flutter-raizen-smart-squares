import 'package:raizen_smart_squares/presentation/offer_activated/offer_activated_screen.dart';
import 'package:raizen_smart_squares/presentation/offer_activated/binding/offer_activated_binding.dart';
import 'package:raizen_smart_squares/presentation/qr_code_scanner_screen/binding/qr_code_scanner_binding.dart';
import 'package:raizen_smart_squares/presentation/qr_code_scanner_screen/qr_code_scanner_screen.dart';
import 'package:raizen_smart_squares/presentation/session_result_screen/session_result_screen.dart';
import 'package:raizen_smart_squares/presentation/session_result_screen/binding/session_result_binding.dart';
import 'package:raizen_smart_squares/presentation/places_screen/places_screen.dart';
import 'package:raizen_smart_squares/presentation/places_screen/binding/places_binding.dart';
import 'package:raizen_smart_squares/presentation/cadastro_screen/cadastro_screen.dart';
import 'package:raizen_smart_squares/presentation/cadastro_screen/binding/cadastro_binding.dart';
import 'package:raizen_smart_squares/presentation/benefits_screen/benefits_screen.dart';
import 'package:raizen_smart_squares/presentation/benefits_screen/binding/benefits_binding.dart';
import 'package:raizen_smart_squares/presentation/splash_screen/binding/splash_binding.dart';
import 'package:raizen_smart_squares/presentation/splash_screen/splash_screen.dart';
import 'package:raizen_smart_squares/presentation/main_screen/main_screen.dart';
import 'package:raizen_smart_squares/presentation/main_screen/binding/main_binding.dart';
import 'package:raizen_smart_squares/presentation/login_screen/login_screen.dart';
import 'package:raizen_smart_squares/presentation/login_screen/binding/login_binding.dart';
import 'package:raizen_smart_squares/presentation/offer_benefit/offer_benefit_screen.dart';
import 'package:raizen_smart_squares/presentation/offer_benefit/binding/offer_benefit_binding.dart';
import 'package:raizen_smart_squares/presentation/session_start_screen/session_start_screen.dart';
import 'package:raizen_smart_squares/presentation/session_start_screen/binding/session_start_binding.dart';
import 'package:raizen_smart_squares/presentation/session_timer/session_timer_screen.dart';
import 'package:raizen_smart_squares/presentation/session_timer/binding/session_timer_binding.dart';
import 'package:raizen_smart_squares/presentation/impactos_screen/impactos_screen.dart';
import 'package:raizen_smart_squares/presentation/impactos_screen/binding/impactos_binding.dart';
import 'package:raizen_smart_squares/presentation/qr_code_intro_screen/qr_code_intro_screen.dart';
import 'package:raizen_smart_squares/presentation/qr_code_intro_screen/binding/qr_code_intro_binding.dart';
import 'package:raizen_smart_squares/presentation/intro_screen/intro_screen.dart';
import 'package:raizen_smart_squares/presentation/intro_screen/binding/intro_binding.dart';
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

  static String sessionResultScreen = '/session_result_screen';

  static String benefitsScren = '/benefits_screen';

  static String offerActivatedScreen = '/offer_activated_screen';

  static String testeScreen = '/teste_screen';

  static String offerBenefitScreen = '/offer_benefit';

  static String impactosScreen = '/impactos_screen';

  static String initialRoute = splashScreen;

  static List<GetPage> pages = [
    GetPage(
      name: signUpScreen,
      page: () => CadastroScreen(),
      bindings: [
        CadastroBinding(),
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
    GetPage(
      name: sessionResultScreen,
      page: () => const SessionResultScreen(),
      bindings: [SessionResultBinding()],
    ),
    GetPage(
      name: benefitsScren,
      page: () => const BenefitsScreen(),
      bindings: [BenefitsBinding()],
    ),
    GetPage(
      name: offerActivatedScreen,
      page: () => const OfferActivatedScreen(),
      bindings: [OfferActivatedBinding()],
    ),
    GetPage(
      name: offerBenefitScreen,
      page: () => const OfferBenefitScreen(),
      bindings: [SeleOBeneficioBinding()],
    ),
  ];
}
