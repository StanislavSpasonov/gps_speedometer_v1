import 'package:speedometer/scr/feature/language_page/domain/locale_locale_change_notifier/locale_change_notifier.dart';

abstract class LanguageRepository {
  Future<void> setLanguage(LocaleEnum locale);
  Future<LocaleEnum> getLanguage();
  Future<void> saveLanguage();
}
