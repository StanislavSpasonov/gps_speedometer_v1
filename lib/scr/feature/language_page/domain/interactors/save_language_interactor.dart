import 'package:speedometer/scr/core/interactors/base_no_arg_interactor.dart';
import 'package:speedometer/scr/feature/language_page/domain/repository/language_repository.dart';

class SaveLanguageInteractor extends BaseNoArgInteractor<void> {
  final LanguageRepository languageRepository;

  SaveLanguageInteractor(this.languageRepository);

  @override
  Future<void> call() async {
    languageRepository.saveLanguage();
  }
}
