import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:speedometer/generated/l10n.dart';
import 'package:speedometer/scr/core/theme_ext/theme_ext.dart';
import 'package:speedometer/scr/feature/language_page/domain/locale_locale_change_notifier/locale_change_notifier.dart';
import 'package:speedometer/scr/feature/speedometer_page/speedometer_page.dart';

void main() {
  runApp(const SpeedometerApp());
}

class SpeedometerApp extends StatelessWidget {
  const SpeedometerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return LocaleChangeNotifier();
      },
      child: Builder(builder: (context) {
        return MaterialApp(
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          locale: context.watch<LocaleChangeNotifier>().getLocale,
          supportedLocales: S.delegate.supportedLocales,
          theme: Theme.of(context).copyWith(
            extensions: <ThemeExtension<dynamic>>[
              AppTheme(),
            ],
          ),
          home: const SpeedometerPage(),
        );
      }),
    );
  }
}
