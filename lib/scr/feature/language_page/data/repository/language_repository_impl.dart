import 'package:speedometer/scr/feature/language_page/domain/locale_locale_change_notifier/locale_change_notifier.dart';
import 'package:speedometer/scr/feature/language_page/domain/repository/language_repository.dart';

class LanguageRepositoryImpl extends LanguageRepository {
  LocaleEnum? _currentLanguage = LocaleEnum.ru;

  LanguageRepositoryImpl({LocaleEnum? systemLanguage}) {
    _currentLanguage ??= systemLanguage;
  }

  @override
  Future<void> setLanguage(LocaleEnum locale) async {
    _currentLanguage = locale;
    // Здесь можно выполнить дополнительные действия, связанные с установкой языка
  }

  @override
  Future<LocaleEnum> getLanguage() async {
    // Здесь можно выполнить дополнительные действия, связанные с получением языка
    return _currentLanguage ?? LocaleEnum.ru;
  }

  @override
  Future<void> saveLanguage() async {
    // Здесь можно выполнить дополнительные действия, связанные с сохранением языка
    // Например, сохранить язык в базе данных или в файле
  }
}
