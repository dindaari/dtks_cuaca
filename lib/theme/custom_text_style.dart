import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  // Display text style
  static get displayMediumMedium => theme.textTheme.displayMedium!.copyWith(
        fontSize: 48.fSize,
        fontWeight: FontWeight.w500,
      );
  // Label text style
  static get labelMediumMedium => theme.textTheme.labelMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  // Title text style
  static get titleLargeBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeRobotoGray60001 =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: appTheme.gray60001,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeRobotoGray60001Medium =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: appTheme.gray60001,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeRobotoWhiteA700 =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: appTheme.whiteA700,
        fontSize: 23.fSize,
      );
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMediumRoboto => theme.textTheme.titleMedium!.roboto.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMediumRoboto18 =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMediumRobotoBluegray400 =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: appTheme.blueGray400,
        fontSize: 16.fSize,
      );
  static get titleMediumRobotoGray60001 =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: appTheme.gray60001,
        fontSize: 18.fSize,
      );
  static get titleMediumRobotoGray6000118 =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: appTheme.gray60001,
        fontSize: 18.fSize,
      );
  static get titleMediumRobotoGray700 =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: appTheme.gray700,
        fontSize: 18.fSize,
      );
  static get titleSmallDMSansGray90002 =>
      theme.textTheme.titleSmall!.dMSans.copyWith(
        color: appTheme.gray90002,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray700,
        fontSize: 14.fSize,
      );
}

extension on TextStyle {
  TextStyle get kadwa {
    return copyWith(
      fontFamily: 'Kadwa',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get dMSans {
    return copyWith(
      fontFamily: 'DM Sans',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
