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
  String get upper => this >= 10 ? '${this}': '0${this}';
}
