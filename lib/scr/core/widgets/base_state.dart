import 'package:flutter/material.dart';
import 'package:speedometer/scr/core/theme_ext/theme_ext.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T> {
  Widget buildState(BuildContext context, AppTheme? appTheme);

  @override
  Widget build(BuildContext context) {
    final AppTheme? appTheme = Theme.of(context).extension<AppTheme>();
    return buildState(context, appTheme);
  }
}