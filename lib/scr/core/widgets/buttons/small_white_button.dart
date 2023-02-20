import 'package:flutter/material.dart';
import 'package:speedometer/scr/core/theme_ext/theme_ext.dart';
import 'package:speedometer/scr/core/widgets/base_less_widget.dart';
import 'package:speedometer/scr/core/widgets/buttons/template_button.dart';

class SmallWhiteButton extends BaseStatelessWidget {
  static const _heightButton = 40.0;

  const SmallWhiteButton({
    super.key,
    required this.title,
    required this.onPress,
  });

  final String title;
  final void Function() onPress;

  @override
  Widget buildWidget(BuildContext context, AppTheme? appTheme) {
    return TemplateButton(
      onPress: onPress,
      title: title,
      height: _heightButton,
      backgroundColor: appTheme?.colors.white,
      textStyle: appTheme?.fonts.aldrich15.copyWith(
        color: appTheme.colors.black,
      ),
    );
  }
}
