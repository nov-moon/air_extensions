import 'dart:ui' hide TextStyle;

import 'package:flutter/material.dart';

part 'config_text.dart';

enum TextStyleEnum {
  titleDefault,
  subtitle1,
  subtitle2,
  subtitle3,
  body1,
  body2,
  caption1,
  caption2,
  overLine,
  button1,
  button2,
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
