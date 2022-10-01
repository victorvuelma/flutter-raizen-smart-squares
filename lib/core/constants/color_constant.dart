import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  const ColorConstant._();

  static const Color purple800 = Color(0xFF781E77);

  static const Color primary = purple800;

  static const Color light00 = Color(0xFFFFFFFF);

  static const Color light10 = Color(0xFFFBFBFB);
  static const Color light50 = Color(0xFFF2F2F2);

  static const Color lightBackground = light10;

  static const Color green400 = Color(0xFFA4D65E);

  static const Color gray400 = Color(0xFFD1D1D1);

  static Color gray600 = fromHex('#727272');

  static Color gray500 = fromHex('#9e9c9c');

  static Color bluegray90066 = fromHex('#66333333');

  static Color purple80099 = fromHex('#99781d76');

  static Color gray900 = fromHex('#171717');

  static Color purple800Cc = fromHex('#cc781e77');

  static Color bluegray100 = fromHex('#d1d1d1');

  static Color lightGreen400 = fromHex('#a4d65e');

  static Color black9003f = fromHex('#3f000000');

  static Color gray101 = fromHex('#f5f5f5');

  static Color lightGreen400Cc = fromHex('#cca4d65e');

  static Color gray50 = fromHex('#fafafa');

  static Color gray100 = fromHex('#f2f2f2');

  static Color bluegray900 = fromHex('#333333');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
