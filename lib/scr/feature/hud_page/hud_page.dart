import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:speedometer/generated/l10n.dart';
import 'package:speedometer/scr/core/theme_ext/theme_ext.dart';
import 'package:speedometer/scr/core/widgets/base_less_widget.dart';

class HudPage extends BaseStatelessWidget {
  const HudPage({Key? key}) : super(key: key);

  @override
  Widget buildWidget(
      BuildContext context, AppTheme? appTheme, S appLocalization) {
    return Scaffold(
      body: Column(
        children: [
          Text('km/h'),
          Text(appLocalization.km_h_hug),
        ],
      ),
    );
  }
}
