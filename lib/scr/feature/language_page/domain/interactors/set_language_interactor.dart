import 'package:speedometer/scr/core/interactors/base_interactor.dart';
import 'package:speedometer/scr/feature/language_page/domain/locale_locale_change_notifier/locale_change_notifier.dart';
import 'package:speedometer/scr/feature/language_page/domain/repository/language_repository.dart';

class SetLanguageInteractor extends BaseInteractor<LocaleEnum, void> {
  final LanguageRepository languageRepository;

  SetLanguageInteractor(this.languageRepository);

  @override
  Future<void> call(LocaleEnum argument) async {
    languageRepository.setLanguage(argument);
  }
}
