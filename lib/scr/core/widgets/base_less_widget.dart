import 'package:flutter/material.dart';
import 'package:speedometer/scr/core/theme_ext/theme_ext.dart';

abstract class BaseStatelessWidget extends StatelessWidget {
  const BaseStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppTheme? appTheme = Theme.of(context).extension<AppTheme>();
    return buildWidget(context, appTheme);
  }

  Widget buildWidget(BuildContext context, AppTheme? appTheme);
}
