import 'dart:io';
import 'dart:ui';

import 'package:air_extensions/src/extension_config.dart';
import 'package:flutter/widgets.dart';

extension AirStringExtension on String? {
  bool get isEmptyOrNull => this?.isEmpty ?? true;

  String get value => this ?? '';

  /// 当前对象是否是Http路径
  bool get isPathHttp =>
      value.startsWith('http://') || value.startsWith('https://');

  /// 当前对象是否是asset路径
  bool get isPathAsset => value.startsWith(AirExtConfig.assetPath);

  /// 使用image路径为父路径，补全asset路径
  String get assetPathImg => AirExtConfig.assetImagePath + value;

  /// 将当前String作为全路径转为File
  File get asFile => File(value);

  /// 将当前做Uri
  Uri get asUri => Uri.parse(value);

  /// convert the string to a Color
  Color get color => AirHexColor(value);

  /// 当前对象是否是邮箱
  bool get isEmail {
    RegExp emailReg = new RegExp("[[A-z0-9_-]+\\@[A-z0-9]+\\.[A-z]+");
    return emailReg.hasMatch(value);
  }
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

  /// Text 14 w700 height:18
  Text txt14w700({
    Color? color,
    int type = 0,
    TextStyle? textStyle,
    bool softWrap = true,
    TextOverflow? overflow,
    TextAlign? textAlign,
  }) {
    return _txt(
        color, textStyle, TextStyleEnum.txt14w700, type, softWrap, overflow,
        textAlign: textAlign);
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

  Text txtHint1({
    Color? color,
    int type = 0,
    TextStyle? textStyle,
    bool softWrap = true,
    TextOverflow? overflow,
  }) {
    return _txt(
        color, textStyle, TextStyleEnum.hint1, type, softWrap, overflow);
  }

  /// Text 18 w700 ..  height:22
  Text txt18w700({
    Color? color,
    int type = 0,
    TextStyle? textStyle,
    bool softWrap = true,
    TextOverflow? overflow,
  }) {
    return _txt(
        color, textStyle, TextStyleEnum.txt18w700, type, softWrap, overflow);
  }

  /// Text 10 w400 ..  height:12
  Text txt10w400({
    Color? color,
    int type = 0,
    TextStyle? textStyle,
    bool softWrap = true,
    TextOverflow? overflow,
  }) {
    return _txt(
        color, textStyle, TextStyleEnum.txt10w400, type, softWrap, overflow);
  }

  /// Text 16 w400 ..  height:19
  Text txt16w400({
    Color? color,
    int type = 0,
    TextStyle? textStyle,
    bool softWrap = true,
    TextOverflow? overflow,
  }) {
    return _txt(
        color, textStyle, TextStyleEnum.txt16w400, type, softWrap, overflow);
  }

  /// Text 18 w400 ..  height:24
  Text txt18w400({
    Color? color,
    int type = 0,
    TextStyle? textStyle,
    bool softWrap = true,
    TextOverflow? overflow,
  }) {
    return _txt(
        color, textStyle, TextStyleEnum.txt18w400, type, softWrap, overflow);
  }

  /// Text 18 w500 ..  height:24
  Text txt18w500({
    Color? color,
    int type = 0,
    TextStyle? textStyle,
    bool softWrap = true,
    TextOverflow? overflow,
  }) {
    return _txt(
        color, textStyle, TextStyleEnum.txt18w500, type, softWrap, overflow);
  }

  /// Text 16 w700 ..
  Text txt16w900({
    Color? color,
    int type = 0,
    TextStyle? textStyle,
    bool softWrap = true,
    TextOverflow? overflow,
  }) {
    return _txt(
        color, textStyle, TextStyleEnum.txt16w900, type, softWrap, overflow);
  }

  /// Text 16 w700 ..
  Text txt16w700(
      {Color? color,
      int type = 0,
      TextStyle? textStyle,
      bool softWrap = true,
      TextOverflow? overflow,
      TextAlign? textAlign,
      int? maxLines}) {
    return _txt(
        color, textStyle, TextStyleEnum.txt16w700, type, softWrap, overflow,
        maxLines: maxLines, textAlign: textAlign);
  }

  /// Text 16 w500 ..
  Text txt16w500({
    Color? color,
    int type = 0,
    TextStyle? textStyle,
    bool softWrap = true,
    TextOverflow? overflow,
    double? height,
    TextAlign? textAlign,
  }) {
    return _txt(
        color, textStyle, TextStyleEnum.txt16w500, type, softWrap, overflow,
        height: height, textAlign: textAlign);
  }

  /// Text 14 w400 ..
  Text txt14w400({
    Color? color,
    int type = 0,
    TextStyle? textStyle,
    bool softWrap = true,
    TextOverflow? overflow,
    TextAlign? textAlign,
    int? maxLines,
    double? height,
  }) {
    return _txt(
        color, textStyle, TextStyleEnum.txt14w400, type, softWrap, overflow,
        maxLines: maxLines, height: height, textAlign: textAlign);
  }

  /// Text 14 w500 ..
  Text txt14w500(
      {Color? color,
      int type = 0,
      TextStyle? textStyle,
      bool softWrap = true,
      TextOverflow? overflow,
      int? maxLines,
      String? fontFamily}) {
    return _txt(
        color, textStyle, TextStyleEnum.txt14w500, type, softWrap, overflow,
        maxLines: maxLines, fontFamily: fontFamily);
  }

  /// Text 14 w500 ..
  Text txt11w400(
      {Color? color,
      int type = 0,
      TextStyle? textStyle,
      bool softWrap = true,
      TextOverflow? overflow,
      int? maxLines,
      String? fontFamily}) {
    return _txt(
        color, textStyle, TextStyleEnum.txt11w400, type, softWrap, overflow,
        maxLines: maxLines, fontFamily: fontFamily);
  }

  /// Text 14 w500 ..
  Text txt11w500(
      {Color? color,
      int type = 0,
      TextStyle? textStyle,
      bool softWrap = true,
      TextOverflow? overflow,
      int? maxLines,
      String? fontFamily}) {
    return _txt(
        color, textStyle, TextStyleEnum.txt11w500, type, softWrap, overflow,
        maxLines: maxLines, fontFamily: fontFamily);
  }

  /// Text 12 w400 ..
  Text txt12w400(
      {Color? color,
      int type = 0,
      TextStyle? textStyle,
      bool softWrap = true,
      TextOverflow? overflow,
      TextAlign? textAlign,
      double? height,
      int? maxLines}) {
    return _txt(
        color, textStyle, TextStyleEnum.txt12w400, type, softWrap, overflow,
        height: height, maxLines: maxLines, textAlign: textAlign);
  }

  /// Text 12 w500 ..
  Text txt12w500(
      {Color? color,
      int type = 0,
      TextStyle? textStyle,
      bool softWrap = true,
      TextOverflow? overflow,
      int? maxLines}) {
    return _txt(
        color, textStyle, TextStyleEnum.txt12w500, type, softWrap, overflow,
        maxLines: maxLines);
  }

  /// Text 13 w700 ..
  Text txt13w700({
    Color? color,
    int type = 0,
    TextStyle? textStyle,
    bool softWrap = true,
    TextOverflow? overflow,
  }) {
    return _txt(
        color, textStyle, TextStyleEnum.txt13w700, type, softWrap, overflow);
  }

  /// Text 13 w500 ..
  Text txt13w500({
    Color? color,
    int type = 0,
    TextStyle? textStyle,
    bool softWrap = true,
    TextOverflow? overflow,
  }) {
    return _txt(
        color, textStyle, TextStyleEnum.txt13w500, type, softWrap, overflow);
  }

  /// Text 12 w700 ..
  Text txt12w700({
    Color? color,
    int type = 0,
    TextStyle? textStyle,
    bool softWrap = true,
    TextOverflow? overflow,
  }) {
    return _txt(
        color, textStyle, TextStyleEnum.txt12w700, type, softWrap, overflow);
  }

  Text txt({
    Color? color,
    double? size,
    double? wordSpacing,
    double? letterSpacing,
    double? height,
    FontWeight? fontWeight,
    bool softWrap = true,
    TextOverflow? overflow,
  }) {
    var style = AirExtConfig.textStyleFactory(TextStyleEnum.body2, 0);

    style = style.copyWith(
        fontSize: size,
        color: color,
        wordSpacing: wordSpacing,
        height: height,
        fontWeight: fontWeight,
        letterSpacing: letterSpacing);

    var widget = Text(
      this,
      style: style,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: 1.0,
    );

    return widget;
  }

  Text _txt(
    Color? color,
    TextStyle? textStyle,
    TextStyleEnum e,
    int type,
    bool softWrap,
    TextOverflow? overflow, {
    int? maxLines,
    TextAlign? textAlign,
    double? height,
    String? fontFamily,
    double? textScaleFactor = 1.0,
  }) {
    var style = textStyle ?? AirExtConfig.textStyleFactory(e, type);
    style =
        style.copyWith(color: color, height: height, fontFamily: fontFamily);
    var widget = Text(this,
        style: style,
        softWrap: softWrap,
        overflow: overflow,
        maxLines: maxLines,
        textScaleFactor: textScaleFactor,
        textAlign: textAlign);

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
