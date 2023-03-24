import 'package:flutter/cupertino.dart';

enum LocaleEnum {
  ru,
  en;

  Locale getLocale() {
    switch (this) {
      case LocaleEnum.ru:
        return const Locale('ru', 'RU');
      default:
        return const Locale('en');
    }
  }

  String getLocaleTitle() {
    switch (this) {
      case LocaleEnum.ru:
        return 'russian';
      default:
        return 'english';
    }
  }
}

class LocaleChangeNotifier with ChangeNotifier {
  LocaleEnum localeEnum = LocaleEnum.en;
  LocaleEnum? defaultLanguage;

  set setLocaleEnum(LocaleEnum localeEnum) {
    this.localeEnum = localeEnum;
    notifyListeners();
  }

  void saveDefaultLanguage() {}

  void resetLanguage() {}

  Locale get getLocale => localeEnum.getLocale();
}
