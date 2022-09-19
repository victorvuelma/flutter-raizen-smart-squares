import 'package:asuka/asuka.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:wakelock/wakelock.dart';

import 'package:raizen_smart_squares/core/core.dart';

import 'core/app_export.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  Logger.init(kReleaseMode ? LogMode.live : LogMode.debug);

  await Hive.initFlutter();
  await CoreInjection.register();

  runApp(const SmartSquaresApp());
}

class SmartSquaresApp extends StatelessWidget {
  const SmartSquaresApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      Wakelock.enable();
    }

    return GetMaterialApp(
      title: 'Raízen Smart Squares',
      debugShowCheckedModeBanner: true,
      initialRoute: AppRoutes.initialRoute,
      getPages: AppRoutes.pages,
      theme: AppStyle.appTheme,
      builder: Asuka.builder,
      navigatorObservers: [Asuka.asukaHeroController],
      translations: AppLocalization(),
      locale: Get.deviceLocale, //for setting localization strings
      fallbackLocale: const Locale('pt', 'BR'),
      supportedLocales: const [
        Locale('pt', 'BR'),
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
    );
  }
}
