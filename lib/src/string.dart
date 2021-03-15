import 'dart:io';
import 'dart:ui';

import 'package:air_extensions/src/extension_config.dart';

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
