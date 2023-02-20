import 'package:flutter/material.dart';
import 'package:speedometer/scr/core/theme_ext/theme_ext.dart';
import 'package:speedometer/scr/future/speedometer_page/speedometer_page.dart';

void main() {
  runApp(const SpeedometerApp());
}

class SpeedometerApp extends StatelessWidget {
  const SpeedometerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Theme.of(context).copyWith(
        extensions: <ThemeExtension<dynamic>>[
          AppTheme(),
        ],
      ),
      home: const SpeedometerPage(),
    );
  }
}
