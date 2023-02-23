import 'package:flutter/material.dart';
import 'package:speedometer/generated/l10n.dart';
import 'package:speedometer/scr/core/theme_ext/theme_ext.dart';
import 'package:speedometer/scr/core/widgets/base_less_widget.dart';

const _verticalButtonPadding = 10.0;
const _defaultHeight = 50.0;

class TemplateButton extends BaseStatelessWidget {
  const TemplateButton({
    Key? key,
    required this.onPress,
    required this.title,
    this.textStyle,
    this.backgroundColor,
    this.height,
    this.borderColor,
  }) : super(key: key);
  final void Function() onPress;
  final String title;
  final TextStyle? textStyle;
  final Color? backgroundColor;
  final double? height;
  final Color? borderColor;

  @override
  Widget buildWidget(
      BuildContext context, AppTheme? appTheme, S appLocalization) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: _verticalButtonPadding),
        width: double.infinity,
        height: height ?? _defaultHeight,
        decoration: BoxDecoration(
          border: borderColor != null ? Border.all(color: borderColor!) : null,
          borderRadius: BorderRadius.circular(appTheme?.borderRadius.main ?? 0),
          color: backgroundColor ?? appTheme?.colors.white ?? Colors.white,
        ),
        child: Center(
          child: Text(
            title,
            style: textStyle ??
                appTheme?.fonts.aldrich15
                    .copyWith(color: appTheme.colors.black),
          ),
        ),
      ),
    );
  }
}
