import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:speedometer/generated/l10n.dart';
import 'package:speedometer/scr/core/theme_ext/theme_ext.dart';
import 'package:speedometer/scr/core/widgets/appbar_speedometr.dart';
import 'package:speedometer/scr/core/widgets/base_state.dart';
import 'package:speedometer/scr/core/widgets/buttons/big_black_button.dart';
import 'package:speedometer/scr/future/language_page/domain/locale_locale_change_notifier/locale_change_notifier.dart';
import 'package:speedometer/scr/future/language_page/widget/chose_language_widget.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({Key? key}) : super(key: key);

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends BaseState<LanguagePage> {
  int choseIndex = 0;

  @override
  Widget buildState(
      BuildContext context, AppTheme? appTheme, S appLocalization) {
    final listLanguage = <String>[
      appLocalization.russian,
      appLocalization.english,
    ];
    return Scaffold(
      appBar: AppBarSpeedometer(
        title: appLocalization.settings,
      ),
      backgroundColor: appTheme?.colors.black,
      body: Padding(
        padding: EdgeInsets.all(appTheme?.paddings.main ?? 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...List.generate(
              listLanguage.length,
              (i) => ChoseLanguageWidget(
                title: listLanguage[i],
                onTap: () {
                  setState(() {
                    choseIndex = i;
                    context.read<LocaleChangeNotifier>().setLocaleEnum =
                        LocaleEnum.values[i];
                  });
                },
                itIsChose: i == choseIndex,
              ),
            ),
            SizedBox(
              height: appTheme?.paddings.main,
            ),
            Center(
              child: BigBlackButton(
                title: appLocalization.saveChanges,
                onPress: () {
                  //todo save Change
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
