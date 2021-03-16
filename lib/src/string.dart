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
  Text txtTitle({Color? color, int type = 0, TextStyle? textStyle}) {
    return _txt(color, textStyle, TextStyleEnum.titleDefault, type);
  }

  Text txtSubtitle1({Color? color, int type = 0, TextStyle? textStyle}) {
    return _txt(color, textStyle, TextStyleEnum.subtitle1, type);
  }

  Text txtSubtitle2({Color? color, int type = 0, TextStyle? textStyle}) {
    return _txt(color, textStyle, TextStyleEnum.subtitle2, type);
  }

  Text txtBody1({Color? color, int type = 0, TextStyle? textStyle}) {
    return _txt(color, textStyle, TextStyleEnum.body1, type);
  }

  Text txtBody2({Color? color, int type = 0, TextStyle? textStyle}) {
    return _txt(color, textStyle, TextStyleEnum.body2, type);
  }

  Text txtCaption1({Color? color, int type = 0, TextStyle? textStyle}) {
    return _txt(color, textStyle, TextStyleEnum.caption1, type);
  }

  Text txtCaption2({Color? color, int type = 0, TextStyle? textStyle}) {
    return _txt(color, textStyle, TextStyleEnum.caption2, type);
  }

  Text txtOverLine({Color? color, int type = 0, TextStyle? textStyle}) {
    return _txt(color, textStyle, TextStyleEnum.overLine, type);
  }

  Text txtButton1({Color? color, int type = 0, TextStyle? textStyle}) {
    return _txt(color, textStyle, TextStyleEnum.button1, type);
  }

  Text txtButton2({Color? color, int type = 0, TextStyle? textStyle}) {
    return _txt(color, textStyle, TextStyleEnum.button2, type);
  }

  Text txtH1({Color? color, int type = 0, TextStyle? textStyle}) {
    return _txt(color, textStyle, TextStyleEnum.h1, type);
  }

  Text txtH2({Color? color, int type = 0, TextStyle? textStyle}) {
    return _txt(color, textStyle, TextStyleEnum.h2, type);
  }

  Text txtH3({Color? color, int type = 0, TextStyle? textStyle}) {
    return _txt(color, textStyle, TextStyleEnum.h3, type);
  }

  Text _txt(Color? color, TextStyle? textStyle, TextStyleEnum e, int type) {
    var style = textStyle ?? AirExtConfig.textStyleFactory(e, type);
    if (color != null) {
      style = style.copyWith(color: color);
    }
    var widget = Text(this, style: style);

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
