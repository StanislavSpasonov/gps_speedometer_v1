import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme extends ThemeExtension<AppTheme> {
  @override
  ThemeExtension<AppTheme> copyWith() {
    return this;
  }

  @override
  ThemeExtension<AppTheme> lerp(ThemeExtension<AppTheme>? other, double t) {
    return this;
  }

  final AppColors colors = AppColors();
  final AppPaddings paddings = AppPaddings();
  final AppBorderRadius borderRadius = AppBorderRadius();
  final AppFonts fonts = AppFonts();
  final SvgIconsPath svgImagePath = SvgIconsPath();
}

class AppColors {
  final black = const Color(0xff000000);
  final white = const Color(0xffffffff);
  final green = const Color(0xff389300);
  final whiteBackground = const Color(0xffE5E5E5);
}

class AppPaddings {
  final main = 16.0;
  final small = 8.0;
}

class AppBorderRadius {
  final main = 4.0;
}

class AppFonts {
  final rubik15 = GoogleFonts.rubik(color: AppColors().white, fontSize: 15);

  final aldrich15 = GoogleFonts.aldrich(color: AppColors().white, fontSize: 15);
  final aldrich17 = GoogleFonts.aldrich(color: AppColors().white, fontSize: 17);
  final aldrich20 = GoogleFonts.aldrich(color: AppColors().white, fontSize: 20);
  final aldrich22 = GoogleFonts.aldrich(color: AppColors().white, fontSize: 22);
  final aldrich28 = GoogleFonts.aldrich(color: AppColors().white, fontSize: 28);
  final aldrich34 = GoogleFonts.aldrich(color: AppColors().white, fontSize: 34);
  final aldrich36 = GoogleFonts.aldrich(color: AppColors().white, fontSize: 36);
  final aldrich140 =
      GoogleFonts.aldrich(color: AppColors().white, fontSize: 140);
}

class SvgIconsPath {
  final sandwichMenu = 'graphics/svg/menu.svg';
  final choseLanguage = 'graphics/svg/choose_language.svg';
}
