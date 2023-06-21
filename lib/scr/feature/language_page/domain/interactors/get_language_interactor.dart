import 'package:speedometer/scr/core/interactors/base_no_arg_interactor.dart';
import 'package:speedometer/scr/feature/language_page/domain/locale_locale_change_notifier/locale_change_notifier.dart';
import 'package:speedometer/scr/feature/language_page/domain/repository/language_repository.dart';

class GetLanguageInteractor extends BaseNoArgInteractor<LocaleEnum> {
  final LanguageRepository languageRepository;

  GetLanguageInteractor(this.languageRepository);
  @override
  Future<LocaleEnum> call() async {
    return await languageRepository.getLanguage();
  }
}
