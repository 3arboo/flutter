import 'package:flutter/material.dart';
import 'package:tasks/core/utils/size_utils.dart';
import 'package:tasks/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLarge16 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 16.fSize,
      );
  static get bodyLargeBluegray300 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray300,
      );
  static get bodyLargeBluegray30001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray30001,
        fontSize: 16.fSize,
      );
  static get bodyLargeBluegray40001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray40001,
        fontSize: 16.fSize,
      );
  static get bodyLargeOnPrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 16.fSize,
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
      );
  static get bodyMediumBluegray300 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray300,
      );
  static get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyMediumff8caab8 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF8CAAB8),
      );
  static get bodyMediumfffed36a => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFFFED36A),
      );
  static get bodySmallBluegray100 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray100,
        fontSize: 12.fSize,
      );
  static get bodySmallOnPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 12.fSize,
      );
  static get bodySmallOnPrimary11 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 11.fSize,
      );
  static get bodySmallOnPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 8.fSize,
      );
  static get bodySmallOnPrimaryContainer11 =>
      theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 11.fSize,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallTeal100 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.teal100,
        fontSize: 12.fSize,
      );
  // Display text style
  static get displayLargeOnPrimaryContainer =>
      theme.textTheme.displayLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get displayLargeffffffff => theme.textTheme.displayLarge!.copyWith(
        color: Color(0XFFFFFFFF),
      );
  // Headline text style
  static get headlineSmallfffed36a => theme.textTheme.headlineSmall!.copyWith(
        color: Color(0XFFFED36A),
      );
  static get headlineSmallffffffff => theme.textTheme.headlineSmall!.copyWith(
        color: Color(0XFFFFFFFF),
      );
  // Label text style
  static get labelMediumBluegray300 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blueGray300,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get labelSmall9 => theme.textTheme.labelSmall!.copyWith(
        fontSize: 9.fSize,
      );
  static get labelSmallBlack900 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.black900,
        fontSize: 9.fSize,
      );
  static get labelSmallBluegray900 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w500,
      );
  static get labelSmallMedium => theme.textTheme.labelSmall!.copyWith(
        fontSize: 9.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelSmallOnPrimary => theme.textTheme.labelSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 9.fSize,
        fontWeight: FontWeight.w500,
      );
  // Title text style
  static get titleLargePilatExtended =>
      theme.textTheme.titleLarge!.pilatExtended.copyWith(
        fontSize: 21.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargePilatExtendedBlack900 =>
      theme.textTheme.titleLarge!.pilatExtended.copyWith(
        color: appTheme.black900,
        fontSize: 21.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargePilatExtendedSemiBold =>
      theme.textTheme.titleLarge!.pilatExtended.copyWith(
        fontSize: 22.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeSemiBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBlack90016 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 16.fSize,
      );
  static get titleMediumBluegray300 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray300,
        fontSize: 16.fSize,
      );
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleMediumOnPrimarySemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPilatExtended =>
      theme.textTheme.titleMedium!.pilatExtended.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPilatExtendedfffed36a =>
      theme.textTheme.titleMedium!.pilatExtended.copyWith(
        color: Color(0XFFFED36A),
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPilatExtendedffffffff =>
      theme.textTheme.titleMedium!.pilatExtended.copyWith(
        color: Color(0XFFFFFFFF),
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold_1 => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumff8caab8 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF8CAAB8),
        fontSize: 16.fSize,
      );
  static get titleMediumfffed36a => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFFFED36A),
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallMedium => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleSmallOnPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallffffffff => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFFFFFFFF),
      );
}

extension on TextStyle {
  TextStyle get pilatExtended {
    return copyWith(
      fontFamily: 'Pilat Extended',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
