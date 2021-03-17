import 'package:flutter/widgets.dart';

Widget fixWidget(Widget self, Widget Function(Widget) initChild) {
  if (self is Expanded) {
    return Expanded(
      child: initChild(self.child),
    );
  }
  if (self is Positioned) {
    return Positioned(
      left: self.left,
      top: self.top,
      right: self.right,
      bottom: self.bottom,
      width: self.width,
      height: self.height,
      child: initChild(self.child),
    );
  }
  if (self is Flexible) {
    return Flexible(
      flex: self.flex,
      fit: self.fit,
      child: initChild(self.child),
    );
  }
  return initChild(self);
}
