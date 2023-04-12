import 'package:flutter/material.dart';
import 'package:speedometer/generated/l10n.dart';
import 'package:speedometer/scr/core/theme_ext/theme_ext.dart';

abstract class BaseStatelessWidget extends StatelessWidget {
  const BaseStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppTheme? appTheme = Theme.of(context).extension<AppTheme>();
    final S appLocalization = S.of(context);
    return buildWidget(context, appTheme, appLocalization);
  }

  Widget buildWidget(
      BuildContext context, AppTheme? appTheme, S appLocalization);
}
