import 'package:flutter/material.dart';
import 'package:speedometer/generated/l10n.dart';
import 'package:speedometer/scr/core/theme_ext/theme_ext.dart';
import 'package:speedometer/scr/core/widgets/base_less_widget.dart';

class AppBarSpeedometer extends BaseStatelessWidget with PreferredSizeWidget {
  const AppBarSpeedometer({
    Key? key,
    this.title,
    this.action,
  }) : super(key: key);
  final String? title;
  final Widget? action;

  @override
  PreferredSizeWidget buildWidget(
      BuildContext context, AppTheme? appTheme, S appLocalization) {
    return AppBar(
      backgroundColor: appTheme?.colors.black,
      centerTitle: true,
      title: Text(
        title ?? '',
        style: appTheme?.fonts.aldrich15,
      ),
      actions: action != null ? [action!] : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
