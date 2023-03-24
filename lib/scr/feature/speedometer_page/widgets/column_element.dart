import 'package:flutter/material.dart';
import 'package:speedometer/generated/l10n.dart';
import 'package:speedometer/scr/core/theme_ext/theme_ext.dart';
import 'package:speedometer/scr/core/widgets/base_less_widget.dart';

class ColumnElement extends BaseStatelessWidget {
  const ColumnElement({
    Key? key,
    required this.title,
    required this.data,
  }) : super(key: key);

  final String title;
  final String data;

  @override
  Widget buildWidget(
      BuildContext context, AppTheme? appTheme, S appLocalization) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: appTheme?.paddings.small ?? 0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: appTheme?.fonts.aldrich17,
          ),
          Text(
            data,
            style: appTheme?.fonts.aldrich28,
          ),
        ],
      ),
    );
  }
}
