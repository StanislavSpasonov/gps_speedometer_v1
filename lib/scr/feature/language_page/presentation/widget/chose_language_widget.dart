import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:speedometer/generated/l10n.dart';
import 'package:speedometer/scr/core/theme_ext/theme_ext.dart';
import 'package:speedometer/scr/core/widgets/base_less_widget.dart';

class ChoseLanguageWidget extends BaseStatelessWidget {
  static const _heightWidget = 54.0;

  const ChoseLanguageWidget({
    Key? key,
    required this.title,
    required this.onTap,
    required this.itIsChose,
  }) : super(key: key);
  final String title;
  final void Function() onTap;
  final bool itIsChose;

  @override
  Widget buildWidget(
      BuildContext context, AppTheme? appTheme, S appLocalization) {
    return Center(
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: onTap,
        child: Container(
          color: Colors.transparent,
          height: _heightWidget,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: appTheme?.fonts.aldrich17,
              ),
              if (itIsChose)
                SvgPicture.asset(appTheme?.svgImagePath.choseLanguage ?? ''),
            ],
          ),
        ),
      ),
    );
  }
}
