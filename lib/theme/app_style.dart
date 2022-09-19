import 'package:flutter/material.dart';
import 'package:raizen_smart_squares/core/app_export.dart';

class AppStyle {
  AppStyle._();

  static ThemeData appTheme = ThemeData(
    primaryColor: ColorConstant.primary,
    fontFamily: 'Inter',
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: ColorConstant.purple800),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: ColorConstant.purple800,
        backgroundColor: ColorConstant.green400,
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      labelStyle: TextStyle(
        color: ColorConstant.gray400,
        fontSize: 16,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        borderSide: BorderSide(
          color: ColorConstant.gray400,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        borderSide: BorderSide(
          color: ColorConstant.primary,
        ),
      ),
    ),
  );

  static const TextStyle txtIntro = TextStyle(
    color: ColorConstant.light00,
    fontWeight: FontWeight.w400,
    fontSize: 16,
  );

  static const TextStyle txtSmallTitle = TextStyle(
    color: ColorConstant.purple800,
    fontWeight: FontWeight.w600,
    fontSize: 14,
  );

  static const TextStyle txtMediumTitle = TextStyle(
    color: ColorConstant.purple800,
    fontWeight: FontWeight.w600,
    fontSize: 16,
  );

  static const TextStyle txtBigTitle = TextStyle(
    color: ColorConstant.purple800,
    fontWeight: FontWeight.w800,
    fontSize: 20,
  );

  static ButtonStyle btnTextTheme = TextButton.styleFrom(
    foregroundColor: ColorConstant.light00,
    textStyle: const TextStyle(
      fontSize: 16,
      decoration: TextDecoration.underline,
    ),
  );

  static ButtonStyle btnElevatedPrimary = ElevatedButton.styleFrom(
    foregroundColor: ColorConstant.primary,
    backgroundColor: ColorConstant.light00,
    padding: const EdgeInsets.all(16),
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
    ),
  );

  static ButtonStyle btnElevatedGreen = ElevatedButton.styleFrom(
    padding: const EdgeInsets.all(16.0),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(32)),
    ),
  );

  static TextStyle txtRobotoRegular20Black90012 = TextStyle(
    color: ColorConstant.black900,
    fontSize: getFontSize(
      20,
    ),
    fontWeight: FontWeight.w400,
  );

  static TextStyle txtInterSemiBold18WhiteA700 = TextStyle(
    color: ColorConstant.whiteA700,
    fontSize: getFontSize(
      18,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
  );

  static TextStyle txtInterRegular16WhiteA700 = TextStyle(
    color: ColorConstant.whiteA700,
    fontSize: getFontSize(
      16,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
  );

  static TextStyle txtInterMedium13 = TextStyle(
    color: ColorConstant.gray900,
    fontSize: getFontSize(
      13,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
  );

  static TextStyle txtInterSemiBold18 = TextStyle(
    color: ColorConstant.purple800,
    fontSize: getFontSize(
      18,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
  );

  static TextStyle txtInterMedium16 = TextStyle(
    color: ColorConstant.gray500,
    fontSize: getFontSize(
      16,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
  );

  static TextStyle txtInterSemiBold16 = TextStyle(
    color: ColorConstant.purple800,
    fontSize: getFontSize(
      16,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
  );

  static TextStyle txtInterBold12 = TextStyle(
    color: ColorConstant.purple800,
    fontSize: getFontSize(
      12,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w700,
  );

  static TextStyle txtInterBold24 = TextStyle(
    color: ColorConstant.gray50,
    fontSize: getFontSize(
      24,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w700,
  );

  static TextStyle txtInterLight15 = TextStyle(
    color: ColorConstant.purple800Cc,
    fontSize: getFontSize(
      15,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w300,
  );

  static TextStyle txtRobotoRegular20Black900 = TextStyle(
    color: ColorConstant.black900,
    fontSize: getFontSize(
      20,
    ),
    fontWeight: FontWeight.w400,
  );

  static TextStyle txtInterExtraBold16 = TextStyle(
    color: ColorConstant.purple800,
    fontSize: getFontSize(
      16,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
  );

  static TextStyle txtInterMedium13Purple800 = TextStyle(
    color: ColorConstant.purple800,
    fontSize: getFontSize(
      13,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
  );

  static TextStyle txtInterSemiBold16WhiteA700 = TextStyle(
    color: ColorConstant.whiteA700,
    fontSize: getFontSize(
      16,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
  );

  static TextStyle txtInterMedium16Purple800 = TextStyle(
    color: ColorConstant.purple800,
    fontSize: getFontSize(
      16,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
  );

  static TextStyle txtInterExtraBold14 = TextStyle(
    color: ColorConstant.purple800,
    fontSize: getFontSize(
      14,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
  );

  static TextStyle txtInterExtraBold24 = TextStyle(
    color: ColorConstant.purple800,
    fontSize: getFontSize(
      24,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
  );

  static TextStyle txtRobotoRegular16 = TextStyle(
    color: ColorConstant.bluegray400,
    fontSize: getFontSize(
      16,
    ),
    fontWeight: FontWeight.w400,
  );

  static TextStyle txtInterExtraBold32 = TextStyle(
    color: ColorConstant.lightGreen400,
    fontSize: getFontSize(
      32,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
  );

  static TextStyle txtInterExtraBold20 = TextStyle(
    color: ColorConstant.purple800,
    fontSize: getFontSize(
      20,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
  );

  static TextStyle txtInterRegular15 = TextStyle(
    color: ColorConstant.bluegray900,
    fontSize: getFontSize(
      15,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
  );

  static TextStyle txtInterRegular16 = TextStyle(
    color: ColorConstant.purple800,
    fontSize: getFontSize(
      16,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
  );

  static TextStyle txtRobotoRegular20 = TextStyle(
    color: ColorConstant.black900,
    fontSize: getFontSize(
      20,
    ),
    fontWeight: FontWeight.w400,
  );

  static TextStyle txtInterBold24Purple800 = TextStyle(
    color: ColorConstant.purple800,
    fontSize: getFontSize(
      24,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w700,
  );
}
