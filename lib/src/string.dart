import 'dart:io';
import 'dart:ui';

import 'package:air_extensions/src/extension_config.dart';
import 'package:flutter/widgets.dart';

extension AirStringExtension on String {
  /// 当前对象是否是Http路径
  bool get isPathHttp =>
      this.startsWith('http://') || this.startsWith('https://');

  /// 当前对象是否是asset路径
  bool get isPathAsset => startsWith(AirExtConfig.assetPath);

  /// 使用image路径为父路径，补全asset路径
  String get assetPathImg => AirExtConfig.assetImagePath + this;

  /// 将当前String作为全路径转为File
  File get asFile => File(this);

  /// 将当前做Uri
  Uri get asUri => Uri.parse(this);

  /// convert the string to a Color
  Color get color => AirHexColor(this);
}

extension AirStringTxtExtension on String {
  /// Text 18 w600 0.5
  Text txtTitle({
    Color? color,
    int type = 0,
    TextStyle? textStyle,
    bool softWrap = true,
    TextOverflow? overflow,
  }) {
    return _txt(
        color, textStyle, TextStyleEnum.titleDefault, type, softWrap, overflow);
  }

  /// Text 18 w500 0.2
  Text txtTitle1({
    Color? color,
    int type = 0,
    TextStyle? textStyle,
    bool softWrap = true,
    TextOverflow? overflow,
  }) {
    return _txt(
        color, textStyle, TextStyleEnum.title1, type, softWrap, overflow);
  }

  /// Text 20 w700 0.2
  Text txtTitle2({
    Color? color,
    int type = 0,
    TextStyle? textStyle,
    bool softWrap = true,
    TextOverflow? overflow,
  }) {
    return _txt(
        color, textStyle, TextStyleEnum.title2, type, softWrap, overflow);
  }

  /// Text 14 w500 0.1
  Text txtSubtitle1({
    Color? color,
    int type = 0,
    TextStyle? textStyle,
    bool softWrap = true,
    TextOverflow? overflow,
  }) {
    return _txt(
        color, textStyle, TextStyleEnum.subtitle1, type, softWrap, overflow);
  }

  /// Text 16 w400 0.15
  Text txtSubtitle2({
    Color? color,
    int type = 0,
    TextStyle? textStyle,
    bool softWrap = true,
    TextOverflow? overflow,
  }) {
    return _txt(
        color, textStyle, TextStyleEnum.subtitle2, type, softWrap, overflow);
  }

  /// Text 16 w500 0.15
  Text txtSubtitle3({
    Color? color,
    int type = 0,
    TextStyle? textStyle,
    bool softWrap = true,
    TextOverflow? overflow,
  }) {
    return _txt(
        color, textStyle, TextStyleEnum.subtitle3, type, softWrap, overflow);
  }

  /// Text 14 w500 0.2
  Text txtSubtitle4({
    Color? color,
    int type = 0,
    TextStyle? textStyle,
    bool softWrap = true,
    TextOverflow? overflow,
  }) {
    return _txt(
        color, textStyle, TextStyleEnum.subtitle4, type, softWrap, overflow);
  }

  /// Text 16 w400 0.5
  Text txtBody1({
    Color? color,
    int type = 0,
    TextStyle? textStyle,
    bool softWrap = true,
    TextOverflow? overflow,
  }) {
    return _txt(
        color, textStyle, TextStyleEnum.body1, type, softWrap, overflow);
  }

  /// Text 14 w400 0.25
  Text txtBody2({
    Color? color,
    int type = 0,
    TextStyle? textStyle,
    bool softWrap = true,
    TextOverflow? overflow,
  }) {
    return _txt(
        color, textStyle, TextStyleEnum.body2, type, softWrap, overflow);
  }

  /// Text 14 w400 0.2
  Text txtBody3({
    Color? color,
    int type = 0,
    TextStyle? textStyle,
    bool softWrap = true,
    TextOverflow? overflow,
  }) {
    return _txt(
        color, textStyle, TextStyleEnum.body2, type, softWrap, overflow);
  }

  /// Text 12 w400 0.4
  Text txtCaption1({
    Color? color,
    int type = 0,
    TextStyle? textStyle,
    bool softWrap = true,
    TextOverflow? overflow,
  }) {
    return _txt(
        color, textStyle, TextStyleEnum.caption1, type, softWrap, overflow);
  }

  /// Text 12 w500 0.4
  Text txtCaption2({
    Color? color,
    int type = 0,
    TextStyle? textStyle,
    bool softWrap = true,
    TextOverflow? overflow,
  }) {
    return _txt(
        color, textStyle, TextStyleEnum.caption2, type, softWrap, overflow);
  }

  /// Text 10 w400 0.5
  Text txtOverLine({
    Color? color,
    int type = 0,
    TextStyle? textStyle,
    bool softWrap = true,
    TextOverflow? overflow,
  }) {
    return _txt(
        color, textStyle, TextStyleEnum.overLine, type, softWrap, overflow);
  }

  /// Text 14 w600 1  height:18
  Text txtButton1({
    Color? color,
    int type = 0,
    TextStyle? textStyle,
    bool softWrap = true,
    TextOverflow? overflow,
  }) {
    return _txt(
        color, textStyle, TextStyleEnum.button1, type, softWrap, overflow);
  }

  /// Text 14 w400 0.5  height:18
  Text txtButton2({
    Color? color,
    int type = 0,
    TextStyle? textStyle,
    bool softWrap = true,
    TextOverflow? overflow,
  }) {
    return _txt(
        color, textStyle, TextStyleEnum.button2, type, softWrap, overflow);
  }

  /// Text 18 w700
  Text txtButton3({
    Color? color,
    int type = 0,
    TextStyle? textStyle,
    bool softWrap = true,
    TextOverflow? overflow,
  }) {
    return _txt(
        color, textStyle, TextStyleEnum.button3, type, softWrap, overflow);
  }

  /// Text 32 w500 ..  height:43
  Text txtH1({
    Color? color,
    int type = 0,
    TextStyle? textStyle,
    bool softWrap = true,
    TextOverflow? overflow,
  }) {
    return _txt(color, textStyle, TextStyleEnum.h1, type, softWrap, overflow);
  }

  /// Text 24 w500 ..  height:32
  Text txtH2({
    Color? color,
    int type = 0,
    TextStyle? textStyle,
    bool softWrap = true,
    TextOverflow? overflow,
  }) {
    return _txt(color, textStyle, TextStyleEnum.h2, type, softWrap, overflow);
  }

  /// Text 20 w500 ..  height:27
  Text txtH3({
    Color? color,
    int type = 0,
    TextStyle? textStyle,
    bool softWrap = true,
    TextOverflow? overflow,
  }) {
    return _txt(color, textStyle, TextStyleEnum.h3, type, softWrap, overflow);
  }

  Text txt({
    Color? color,
    double? size,
    double? wordSpacing,
    double? letterSpacing,
    double? height,
    bool softWrap = true,
    TextOverflow? overflow,
  }) {
    var style = AirExtConfig.textStyleFactory(TextStyleEnum.body2, 0);

    style = style.copyWith(
        fontSize: size,
        color: color,
        wordSpacing: wordSpacing,
        height: height,
        letterSpacing: letterSpacing);

    var widget = Text(
      this,
      style: style,
      softWrap: softWrap,
      overflow: overflow,
    );

    return widget;
  }

  Text _txt(
    Color? color,
    TextStyle? textStyle,
    TextStyleEnum e,
    int type,
    bool softWrap,
    TextOverflow? overflow,
  ) {
    var style = textStyle ?? AirExtConfig.textStyleFactory(e, type);
    if (color != null) {
      style = style.copyWith(color: color);
    }
    var widget = Text(
      this,
      style: style,
      softWrap: softWrap,
      overflow: overflow,
    );

    return widget;
  }
}

class AirHexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  AirHexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
