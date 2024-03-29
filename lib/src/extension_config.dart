import 'dart:ui' hide TextStyle;

import 'package:flutter/material.dart';

part 'config_text.dart';

enum TextStyleEnum {
  titleDefault,
  title1,
  title2,
  subtitle1,
  subtitle2,
  subtitle3,
  subtitle4,
  body1,
  body2,
  body3,
  caption1,
  caption2,
  overLine,
  button1,
  button2,
  button3,
  txt14w700,
  h1,
  h2,
  h3,
  hint1,
  txt20w700,
  txt18w700,
  txt10w400,
  txt16w400,
  txt18w400,
  txt18w500,
  txt16w900,
  txt16w700,
  txt16w500,
  txt14w400,
  txt14w500,
  txt13w700,
  txt13w500,
  txt12w700,
  txt12w400,
  txt12w500,
  txt11w400,
  txt11w500,
}

typedef TextStyleFactory = TextStyle Function(TextStyleEnum, int);

class AirExtConfig {
  static String assetPath = 'asset/';
  static String assetImagePath = assetPath + 'image/';
  static String assetFontPath = assetPath + 'font/';
  static TextStyleFactory textStyleFactory = _defaultTextStyleFactory;

  static void setFontFamily(String fontFamily) {
    defaultFontFamily = fontFamily;
  }

  static String getDefaultFontFamily() {
    return defaultFontFamily;
  }
}
