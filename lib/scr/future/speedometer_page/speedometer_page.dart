import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:speedometer/scr/core/theme_ext/theme_ext.dart';
import 'package:speedometer/scr/core/widgets/appbar_speedometr.dart';
import 'package:speedometer/scr/core/widgets/base_less_widget.dart';
import 'package:speedometer/scr/core/widgets/buttons/small_black_button.dart';
import 'package:speedometer/scr/core/widgets/buttons/small_white_button.dart';
import 'package:speedometer/scr/future/speedometer_page/widgets/column_element.dart';

class SpeedometerPage extends BaseStatelessWidget {
  const SpeedometerPage({Key? key}) : super(key: key);

  @override
  Widget buildWidget(BuildContext context, AppTheme? appTheme) {
    return Scaffold(
      backgroundColor: appTheme?.colors.black,
      appBar: AppBarSpeedometer(
        action: IconButton(
          onPressed: () {
            // ignore: avoid_print
            print('meun');
          },
          icon: SvgPicture.asset(appTheme?.svgImagePath.sandwichMenu ?? ''),
          // icon: SvgPicture.asset(appTheme.),
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
              'km/h',
              style: appTheme?.fonts.aldrich20,
            ),
            const SizedBox(
              height: 48,
            ),
            const ColumnElement(
              title: 'Max speed',
              data: '135',
            ),
            const ColumnElement(
              title: 'Average Speed',
              data: '44',
            ),
            const ColumnElement(
              title: 'Trip Meter',
              data: '230',
            ),
            const ColumnElement(
              title: 'Time',
              data: '15:10:33',
            ),
            const Spacer(),
            Row(
              children: [
                SmallBlackButton(
                  title: 'Reset',
                  onPress: () {
                    //todo add reset
                  },
                ),
                const SizedBox(
                  width: 24.0,
                ),
                SmallWhiteButton(
                  title: 'HUD',
                  onPress: () {
                    //todo add HUD Page
                  },
                ),
              ],
            ),
            Text(
              Intl.getCurrentLocale(),
              style: appTheme?.fonts.aldrich17,
            ),
          ],
        ),
      ),
    );
  }
}
