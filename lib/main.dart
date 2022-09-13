import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
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
    return GetMaterialApp(
      debugShowCheckedModeBanner: true,
      translations: AppLocalization(),
      locale: Get.deviceLocale, //for setting localization strings
      fallbackLocale: const Locale('pt', 'BR'),
      title: 'Raízen Smart Squares',

      initialRoute: AppRoutes.initialRoute,
      getPages: AppRoutes.pages,
      theme: AppStyle.appTheme,
    );
  }
}