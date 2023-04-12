import 'package:flutter/material.dart';
import 'package:speedometer/generated/l10n.dart';
import 'package:speedometer/scr/core/theme_ext/theme_ext.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T> {
  Widget buildState(
      BuildContext context, AppTheme? appTheme, S appLocalization);

  @override
  Widget build(BuildContext context) {
    final AppTheme? appTheme = Theme.of(context).extension<AppTheme>();
    final S appLocalization = S.of(context);
    return buildState(context, appTheme, appLocalization);
  }
}
