import 'package:flutter/material.dart';
import 'package:deteksi_cuaca/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get fillGray500 => BoxDecoration(
        color: appTheme.gray500,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Gradient decorations
  static BoxDecoration get gradientWhiteAToAmber => BoxDecoration(
        color: appTheme.whiteA700,
        gradient: LinearGradient(
          begin: Alignment(-0.27, 0.46),
          end: Alignment(0.86, -0.68),
          colors: [
            appTheme.whiteA700,
            appTheme.amber300,
          ],
        ),
      );
  static BoxDecoration get gradientWhiteAToAmber300 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.07, 0.48),
          end: Alignment(1.12, -0.15),
          colors: [
            appTheme.whiteA700,
            appTheme.amber300,
          ],
        ),
      );
}

class BorderRadiusStyle {
  // Custom borders
  static BorderRadius get customBorderBL20 => BorderRadius.vertical(
        bottom: Radius.circular(20.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
