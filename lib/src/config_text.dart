part of 'extension_config.dart';

TextStyle _defaultTextStyleFactory(TextStyleEnum e, int type) {
  switch (e) {
    case TextStyleEnum.titleDefault:
      return _titleDefault;
    case TextStyleEnum.subtitle1:
      return _subtitle1;
    case TextStyleEnum.subtitle2:
      return _subtitle2;
    case TextStyleEnum.subtitle3:
      return _subtitle3;
    case TextStyleEnum.subtitle4:
      return _subtitle4;
    case TextStyleEnum.body1:
      return _body1;
    case TextStyleEnum.body2:
      return _body2;
    case TextStyleEnum.body3:
      return _body3;
    case TextStyleEnum.caption1:
      return _caption1;
    case TextStyleEnum.caption2:
      return _caption2;
    case TextStyleEnum.overLine:
      return _overLine;
    case TextStyleEnum.button1:
      return _button1;
    case TextStyleEnum.button2:
      return _button2;
    case TextStyleEnum.button3:
      return _button3;
    case TextStyleEnum.h1:
      return _h1;
    case TextStyleEnum.h2:
      return _h2;
    case TextStyleEnum.h3:
      return _h3;
  }
}

String? _fontFamily = 'Roboto';

TextStyle _titleDefault = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.5);
TextStyle _subtitle1 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1);
TextStyle _subtitle2 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.15);

TextStyle _subtitle3 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15);
TextStyle _subtitle4 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.2);
TextStyle _body1 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5);
TextStyle _body2 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25);
TextStyle _body3 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.2);
TextStyle _caption1 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.4);
TextStyle _caption2 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.4);
TextStyle _overLine = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 10,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5);
TextStyle _button1 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    height: 18,
    letterSpacing: 1);
TextStyle _button2 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 18,
    letterSpacing: 0.5);
TextStyle _button3 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w700,
    );
TextStyle _h1 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 32,
    fontWeight: FontWeight.w500,
    height: 43);
TextStyle _h2 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 24,
    fontWeight: FontWeight.w500,
    height: 32);
TextStyle _h3 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 20,
    fontWeight: FontWeight.w500,
    height: 27);
