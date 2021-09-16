import 'package:flutter/widgets.dart';

extension AirIntExtension on int {
  Widget get gapRow => SizedBox(
        width: this.toDouble(),
      );

  Widget get gapColumn => SizedBox(
        height: this.toDouble(),
      );

  EdgeInsets get padding => EdgeInsets.all(this.toDouble());

  EdgeInsets get paddingLR => EdgeInsets.only(
        left: this.toDouble(),
        right: this.toDouble(),
      );

  EdgeInsets get paddingTB => EdgeInsets.only(
        top: this.toDouble(),
        bottom: this.toDouble(),
      );

  /// 1, 2 ==> 01, 02
  String get upper => this >= 10 ? '${this}' : '0${this}';

  String upperTo(int count) {
    String stringValue = this.toString();
    int decimalCount = stringValue.length;
    for (int i = 0; i < count - decimalCount; i++) {
      stringValue = '0$stringValue';
    }

    return stringValue;
  }

  /// 248590 ===> '248,590'
  String get formattedString {
    return formatString();
  }

  String formatString({String? separator}) {
    int low = (this % 1000);
    int high = this ~/ 1000;
    String result;
    if (high > 0) {
      result = '${high.formattedString}${separator ?? ','}${low.upperTo(3)}';
    } else {
      result = low.toString();
    }
    return result;
  }
}
