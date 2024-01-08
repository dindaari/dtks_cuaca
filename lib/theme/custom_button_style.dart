import 'dart:ui';
import 'package:deteksi_cuaca/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Gradient button style
  static BoxDecoration get gradientRedToWhiteADecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(23.h),
        gradient: LinearGradient(
          begin: Alignment(0.11, 0),
          end: Alignment(1.42, -6),
          colors: [
            appTheme.red400,
            appTheme.whiteA700.withOpacity(0),
          ],
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
