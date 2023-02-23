import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:speedometer/generated/l10n.dart';
import 'package:speedometer/scr/core/theme_ext/theme_ext.dart';
import 'package:speedometer/scr/core/widgets/appbar_speedometr.dart';
import 'package:speedometer/scr/core/widgets/base_less_widget.dart';
import 'package:speedometer/scr/core/widgets/buttons/small_black_button.dart';
import 'package:speedometer/scr/core/widgets/buttons/small_white_button.dart';
import 'package:speedometer/scr/future/language_page/language_page.dart';
import 'package:speedometer/scr/future/speedometer_page/widgets/column_element.dart';

class SpeedometerPage extends BaseStatelessWidget {
  const SpeedometerPage({Key? key}) : super(key: key);

  @override
  Widget buildWidget(
      BuildContext context, AppTheme? appTheme, S appLocalization) {
    return Scaffold(
      backgroundColor: appTheme?.colors.black,
      appBar: AppBarSpeedometer(
        action: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const LanguagePage(),
              ),
            );
          },
          icon: SvgPicture.asset(appTheme?.svgImagePath.sandwichMenu ?? ''),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: appTheme?.paddings.main ?? 0,
          right: appTheme?.paddings.main ?? 0,
          bottom: appTheme?.paddings.main ?? 0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '90',
              style: appTheme?.fonts.aldrich140,
            ),
            Text(
              S.of(context).km_h,
              style: appTheme?.fonts.aldrich20,
            ),
            const SizedBox(
              height: 48,
            ),
            ColumnElement(
              title: appLocalization.maxSpeed,
              data: '135',
            ),
            ColumnElement(
              title: appLocalization.averageSpeed,
              data: '44',
            ),
            ColumnElement(
              title: appLocalization.tripMeter,
              data: '230',
            ),
            ColumnElement(
              title: appLocalization.tripTime,
              data: '15:10:33',
            ),
            ColumnElement(
              title: appLocalization.time,
              data: '15:10:33',
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: SmallBlackButton(
                    title: 'Reset',
                    onPress: () {
                      //todo add reset
                    },
                  ),
                ),
                const SizedBox(
                  width: 24.0,
                ),
                Expanded(
                  child: SmallWhiteButton(
                    title: 'HUD',
                    onPress: () {
                      //todo add HUD Page
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
