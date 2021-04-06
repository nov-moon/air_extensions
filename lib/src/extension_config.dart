import 'dart:ui' hide TextStyle;

import 'package:flutter/material.dart';

part 'config_text.dart';

enum TextStyleEnum {
  titleDefault,
  title1,
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
  h1,
  h2,
  h3
}




typedef TextStyleFactory = TextStyle Function(TextStyleEnum, int);

class AirExtConfig {
  static String assetPath = 'asset/';
  static String assetImagePath = assetPath + 'image/';
  static String assetFontPath = assetPath + 'font/';
  static TextStyleFactory textStyleFactory = _defaultTextStyleFactory;
}
