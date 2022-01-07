import 'package:air_extensions/src/string.dart';
import 'package:air_extensions/src/util/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

extension AirWidgetExtension on Widget {
  Widget debug() {
    var widget = this;
    assert(() {
      widget = fixWidget(
          this,
          (child) => ColoredBox(
                color: Colors.red,
                child: child,
              ));
      return true;
    }());

    return widget;
  }

  Widget onTap(void onTap()) {
    return fixWidget(
        this,
        (child) => InkWell(
              child: child,
              onTap: onTap,
            ));
  }

  Widget shadow({Color? bgColor}) {
    BoxDecoration decoration =
        BoxDecoration(color: bgColor ?? Colors.white, boxShadow: [
      BoxShadow(
          offset: Offset(0, -1),
          color: Color.fromRGBO(0, 60, 117, 0.09),
          blurRadius: 4.0, //阴影模糊程度
          spreadRadius: 0.1)
    ]);
    return Container(
      decoration: decoration,
      child: this,
    );
  }

  ///没有水波纹效果
  Widget onGestureDetectorTap(void onTap()) {
    return fixWidget(
        this,
        (child) => GestureDetector(
              child: child,
              onTap: onTap,
            ));
  }

  Widget background(Color color) {
    return fixWidget(
        this,
        (child) => ColoredBox(
              color: color,
              child: child,
            ));
  }

  Widget size({double? width, double? height, bool useCenter = true}) {
    return fixWidget(this, (child) {
      Widget w = ConstrainedBox(
        constraints: BoxConstraints.tightFor(width: width, height: height),
        child: child,
      );
      if (useCenter) {
        w = w.center();
      }
      return w;
    });
  }

  Widget center({Alignment alignment = Alignment.center}) {
    return fixWidget(
        this,
        (child) => Align(
              child: child,
              alignment: alignment,
            ));
  }

  Widget visible(bool visible) {
    return fixWidget(
        this,
        (child) => Visibility(
              child: child,
              visible: visible,
            ));
  }

  Widget padding({double? l, double? r, double? t, double? b}) {
    return fixWidget(
        this,
        (child) => Padding(
              padding: EdgeInsets.only(
                left: l ?? 0,
                right: r ?? 0,
                top: t ?? 0,
                bottom: b ?? 0,
              ),
              child: child,
            ));
  }

  Widget paddingAll(double padding) {
    return this.padding(l: padding, r: padding, t: padding, b: padding);
  }

  Widget paddingBoth({double? lr, double? tb}) {
    return padding(l: lr, r: lr, t: tb, b: tb);
  }

  Widget border(String color,
      {double? width, double? radius, bool isFill = false}) {
    var c = color.color;
    var border = RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(radius ?? 4.0)),
        side: BorderSide(
          width: width ?? 1,
          color: c,
        ));
    var decoration = ShapeDecoration(
      shape: border,
      color: isFill ? c : null,
    );

    return fixWidget(
        this, (child) => DecoratedBox(decoration: decoration, child: child));
  }

  Widget clipRoundRect(double radius,
      {bool topOnly = false,
      bool bottomOnly = false,
      bool leftOnly = false,
      bool rightOnly = false}) {
    BorderRadius borderRadius = topOnly
        ? BorderRadius.vertical(top: Radius.circular(radius))
        : bottomOnly
            ? BorderRadius.vertical(bottom: Radius.circular(radius))
            : leftOnly
                ? BorderRadius.horizontal(left: Radius.circular(radius))
                : rightOnly
                    ? BorderRadius.horizontal(right: Radius.circular(radius))
                    : BorderRadius.all(Radius.circular(radius));
    return ClipRRect(borderRadius: borderRadius, child: this);
  }

  WidgetExtensionModel toTap(void onTap()) {
    var m = WidgetExtensionModel();
    m.child = this;
    m.onTap = onTap;
    return m;
  }

  WidgetExtensionModel toBg(Color c) {
    var m = WidgetExtensionModel();
    m.child = this;
    m.backgroundColor = c;
    return m;
  }

  WidgetExtensionModel toSize({double? w, double? h}) {
    var m = WidgetExtensionModel();
    m.child = this;
    m.width = w;
    m.height = h;
    return m;
  }

  WidgetExtensionModel toCenter() {
    var m = WidgetExtensionModel();
    m.child = this;
    m.isCenter = true;
    return m;
  }

  WidgetExtensionModel toPd({double? l, double? r, double? t, double? b}) {
    var m = WidgetExtensionModel();
    m.child = this;
    m.paddingLeft = l;
    m.paddingRight = r;
    m.paddingTop = t;
    m.paddingBottom = b;
    return m;
  }

  WidgetExtensionModel toPdAll(double p) {
    var m = WidgetExtensionModel();
    m.child = this;
    m.paddingLeft = p;
    m.paddingRight = p;
    m.paddingTop = p;
    m.paddingBottom = p;
    return m;
  }

  WidgetExtensionModel toPdBoth({double? lr, double? tb}) {
    var m = WidgetExtensionModel();
    m.child = this;
    m.paddingLeft = lr;
    m.paddingRight = lr;
    m.paddingTop = tb;
    m.paddingBottom = tb;
    return m;
  }
}

extension AirWidgetsExtension on WidgetExtensionModel {
  WidgetExtensionModel toTap(void onTap()) {
    this.onTap = onTap;
    return this;
  }

  WidgetExtensionModel toBg(Color c) {
    this.backgroundColor = c;
    return this;
  }

  WidgetExtensionModel toSize({double? w, double? h}) {
    this.width = w;
    this.height = h;
    return this;
  }

  WidgetExtensionModel toCenter() {
    this.isCenter = true;
    return this;
  }

  WidgetExtensionModel toPd({double? l, double? r, double? t, double? b}) {
    this.paddingLeft = l;
    this.paddingRight = r;
    this.paddingTop = t;
    this.paddingBottom = b;
    return this;
  }

  WidgetExtensionModel toPdAll(double p) {
    this.paddingLeft = p;
    this.paddingRight = p;
    this.paddingTop = p;
    this.paddingBottom = p;
    return this;
  }

  WidgetExtensionModel toPdBoth({double? lr, double? tb}) {
    this.paddingLeft = lr;
    this.paddingRight = lr;
    this.paddingTop = tb;
    this.paddingBottom = tb;
    return this;
  }

  Widget toWidget() {
    var c = child;
    if (c == null) {
      return Center(
        child: Text('child is empty'),
      );
    }
    if (_defaultModel == this) {
      return Center(
        child: Text('air widget extension is empty'),
      );
    }

    Widget current = c;

    if (isCenter ?? false) {
      current = Center(
        child: current,
      );
    }

    if (backgroundColor != null) {
      current = ColoredBox(color: backgroundColor!, child: current);
    }

    if (height != null || width != null) {
      current = ConstrainedBox(
          constraints: BoxConstraints.tightFor(width: width, height: height),
          child: current);
    }

    if (_isPadding()) {
      current = Padding(
          padding: EdgeInsets.only(
              left: paddingLeft ?? 0,
              right: paddingRight ?? 0,
              top: paddingTop ?? 0,
              bottom: paddingBottom ?? 0),
          child: current);
    }

    if (onTap != null) {
      current = InkWell(
        child: current,
        onTap: onTap,
      );
    }
    return current;
  }
}

WidgetExtensionModel _defaultModel = WidgetExtensionModel();

class WidgetExtensionModel {
  double? width;
  double? height;
  double? paddingLeft;
  double? paddingRight;
  double? paddingTop;
  double? paddingBottom;
  bool? isCenter;
  Color? backgroundColor;
  VoidCallback? onTap;
  Widget? child;

  bool _isPadding() =>
      paddingLeft != null ||
      paddingRight != null ||
      paddingTop != null ||
      paddingBottom != null;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WidgetExtensionModel &&
          runtimeType == other.runtimeType &&
          width == other.width &&
          height == other.height &&
          paddingLeft == other.paddingLeft &&
          paddingRight == other.paddingRight &&
          paddingTop == other.paddingTop &&
          paddingBottom == other.paddingBottom &&
          isCenter == other.isCenter &&
          backgroundColor == other.backgroundColor &&
          onTap == other.onTap &&
          child == other.child;

  @override
  int get hashCode =>
      width.hashCode ^
      height.hashCode ^
      paddingLeft.hashCode ^
      paddingRight.hashCode ^
      paddingTop.hashCode ^
      paddingBottom.hashCode ^
      isCenter.hashCode ^
      backgroundColor.hashCode ^
      child.hashCode ^
      onTap.hashCode;
}
