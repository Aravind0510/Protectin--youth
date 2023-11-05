import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLarge17 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 17.fSize,
      );
  static get bodyLarge18 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 18.fSize,
      );
  static get bodyLargeBlue70001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blue70001,
      );
  static get bodyLargeBlue70001_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blue70001,
      );
  static get bodyLargeOnPrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodyMedium14 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 14.fSize,
      );
  static get bodyMediumBlue70001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blue70001,
        fontSize: 14.fSize,
      );
  static get bodyMediumBlue70001_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blue70001,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
      );
  // Headline text style
  static get headlineSmallBlack900 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900,
      );
  static get headlineSmallBlack900Regular =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900,
        fontSize: 24.fSize,
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallBlack900_1 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900,
      );
  static get headlineSmallGray100 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray100,
        fontSize: 24.fSize,
        fontWeight: FontWeight.w600,
      );
  // Title text style
  static get titleLargeBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeBold23 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 23.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeBold_1 => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeMedium => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleLargeSemiBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleLargeSemiBold23 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 23.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeWhiteA700SemiBold =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeWhiteA700_1 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleMedium17 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.fSize,
      );
  static get titleMediumBlue700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blue700,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmall15 => theme.textTheme.titleSmall!.copyWith(
        fontSize: 15.fSize,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
