import 'package:flutter/material.dart';
import 'package:speedometer/scr/core/theme_ext/theme_ext.dart';
import 'package:speedometer/scr/core/widgets/base_less_widget.dart';
import 'package:speedometer/scr/core/widgets/buttons/template_button.dart';

class SmallBlackButton extends BaseStatelessWidget {
  static const _heightButton = 40.0;

  const SmallBlackButton({
    super.key,
    required this.title,
    required this.onPress,
    this.height,
  });

  final String title;
  final void Function() onPress;
  final double? height;

  @override
  Widget buildWidget(BuildContext context, AppTheme? appTheme) {
    return TemplateButton(
      onPress: onPress,
      title: title,
      height: height ?? _heightButton,
      backgroundColor: appTheme?.colors.black,
      textStyle: appTheme?.fonts.aldrich15,
      borderColor: appTheme?.colors.white,
    );
  }
}
