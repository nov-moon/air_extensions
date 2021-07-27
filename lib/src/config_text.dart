part of 'extension_config.dart';

TextStyle _defaultTextStyleFactory(TextStyleEnum e, int type) {
  switch (e) {
    case TextStyleEnum.titleDefault:
      return _titleDefault;
    case TextStyleEnum.title1:
      return _title1;
    case TextStyleEnum.title2:
      return _title2;
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
    case TextStyleEnum.hint1:
      return _hint1;
    case TextStyleEnum.txt14w700:
      return _txt14w700;
    case TextStyleEnum.txt18w700:
      return _txt18w700;
    case TextStyleEnum.txt10w400:
      return _txt10w400;
    case TextStyleEnum.txt16w400:
      return _txt16w400;
    case TextStyleEnum.txt18w400:
      return _txt18w400;
    case TextStyleEnum.txt16w700:
      return _txt16w700;
    case TextStyleEnum.txt14w400:
      return _txt14w400;
    case TextStyleEnum.txt14w500:
      return _txt14w500;
    case TextStyleEnum.txt13w700:
      return _txt13w700;
    case TextStyleEnum.txt12w400:
      return _txt12w400;
    case TextStyleEnum.txt12w500:
      return _txt12w500;
    case TextStyleEnum.icon1:
      // TODO: Handle this case.
      break;
    case TextStyleEnum.txt16w500:
      return _txt16w500;
  }
  return _titleDefault;
}

const String _fontFamily = 'Roboto';
//去掉了所有的字间距
TextStyle _titleDefault = TextStyle(
  fontFamily: _fontFamily,
  fontSize: 18,
  fontWeight: FontWeight.w600,
);
TextStyle _title1 = TextStyle(
  fontFamily: _fontFamily,
  fontSize: 18,
  fontWeight: FontWeight.w500,
);
TextStyle _title2 = TextStyle(
  fontFamily: _fontFamily,
  fontSize: 20,
  fontWeight: FontWeight.w700,
);
TextStyle _subtitle1 = TextStyle(
  fontFamily: _fontFamily,
  fontSize: 14,
  fontWeight: FontWeight.w500,
);
TextStyle _subtitle2 = TextStyle(
  fontFamily: _fontFamily,
  fontSize: 16,
  fontWeight: FontWeight.w400,
);

TextStyle _subtitle3 = TextStyle(
  fontFamily: _fontFamily,
  fontSize: 16,
  fontWeight: FontWeight.w500,
);
TextStyle _subtitle4 = TextStyle(
  fontFamily: _fontFamily,
  fontSize: 14,
  fontWeight: FontWeight.w500,
);
TextStyle _body1 = TextStyle(
  fontFamily: _fontFamily,
  fontSize: 16,
  fontWeight: FontWeight.w400,
);
TextStyle _body2 = TextStyle(
  fontFamily: _fontFamily,
  fontSize: 14,
  fontWeight: FontWeight.w400,
);
TextStyle _body3 = TextStyle(
  fontFamily: _fontFamily,
  fontSize: 14,
  fontWeight: FontWeight.w400,
);
TextStyle _caption1 = TextStyle(
  fontFamily: _fontFamily,
  fontSize: 12,
  fontWeight: FontWeight.w400,
);
TextStyle _caption2 = TextStyle(
  fontFamily: _fontFamily,
  fontSize: 12,
  fontWeight: FontWeight.w500,
);
TextStyle _overLine = TextStyle(
  fontFamily: _fontFamily,
  fontSize: 10,
  fontWeight: FontWeight.w400,
);
TextStyle _button1 = TextStyle(
  fontFamily: _fontFamily,
  fontSize: 14,
  fontWeight: FontWeight.w600,
);
TextStyle _button2 = TextStyle(
  fontFamily: _fontFamily,
  fontSize: 14,
  fontWeight: FontWeight.w500,
);
TextStyle _button3 = TextStyle(
  fontFamily: _fontFamily,
  fontSize: 18,
  fontWeight: FontWeight.w700,
);
TextStyle _h1 = TextStyle(
  fontFamily: _fontFamily,
  fontSize: 32,
  fontWeight: FontWeight.w500,
);
TextStyle _h2 = TextStyle(
  fontFamily: _fontFamily,
  fontSize: 24,
  fontWeight: FontWeight.w500,
);
TextStyle _h3 = TextStyle(
  fontFamily: _fontFamily,
  fontSize: 20,
  fontWeight: FontWeight.w500,
);
TextStyle _txt14w700 = TextStyle(
  fontFamily: _fontFamily,
  fontSize: 14,
  fontWeight: FontWeight.w700,
);
TextStyle _txt18w700 = TextStyle(
  fontFamily: _fontFamily,
  fontSize: 18,
  fontWeight: FontWeight.w700,
);
TextStyle _txt10w400 = TextStyle(
  fontFamily: _fontFamily,
  fontSize: 10,
  fontWeight: FontWeight.w400,
);
TextStyle _txt16w400 = TextStyle(
  fontFamily: _fontFamily,
  fontSize: 16,
  fontWeight: FontWeight.w400,
);
TextStyle _txt18w400 = TextStyle(
  fontFamily: _fontFamily,
  fontSize: 18,
  fontWeight: FontWeight.w400,
);
TextStyle _txt16w700 = TextStyle(
  fontFamily: _fontFamily,
  fontSize: 16,
  fontWeight: FontWeight.w700,
);
TextStyle _txt14w400 = TextStyle(
  fontFamily: _fontFamily,
  fontSize: 14,
  fontWeight: FontWeight.w400,
);
TextStyle _txt14w500 = TextStyle(
  fontFamily: _fontFamily,
  fontSize: 14,
  fontWeight: FontWeight.w500,
);
TextStyle _txt13w700 = TextStyle(
  fontFamily: _fontFamily,
  fontSize: 13,
  fontWeight: FontWeight.w700,
);

const TextStyle _txt12w400 = TextStyle(
  fontFamily: _fontFamily,
  fontSize: 12,
  fontWeight: FontWeight.w400,
);

const TextStyle _txt12w500 = TextStyle(
  fontFamily: _fontFamily,
  fontSize: 12,
  fontWeight: FontWeight.w500,
);

const TextStyle _txt16w500 = TextStyle(
  fontFamily: _fontFamily,
  fontSize: 16,
  fontWeight: FontWeight.w500,
);

const TextStyle _hint1 = const TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: const Color(0xFFB2B2B2));
