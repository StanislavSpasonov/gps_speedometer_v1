import 'package:flutter/cupertino.dart';

enum LocaleEnum {
  ru,
  en;

  Locale getLocale() {
    switch (this) {
      case LocaleEnum.ru:
        return const Locale('ru', 'RU');
      default:
        return const Locale('un');
    }
  }
}

class LocaleChangeNotifier with ChangeNotifier {
  LocaleEnum localeEnum = LocaleEnum.en;

  set setLocaleEnum(LocaleEnum localeEnum) {
    this.localeEnum = localeEnum;
    notifyListeners();
  }

  Locale get getLocale => localeEnum.getLocale();
}
