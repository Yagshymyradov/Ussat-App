import 'package:flutter/material.dart';

import 'theme.dart';

@immutable
class AppTextStyles extends ThemeExtension<AppTextStyles> {
  final TextStyle? cardMedium;
  final TextStyle? cardLarge;
  final TextStyle? smallButton;
  final TextStyle? settingsTitle;

  const AppTextStyles({
    required this.cardMedium,
    required this.smallButton,
    required this.cardLarge,
    required this.settingsTitle,
  });

  @override
  AppTextStyles copyWith({
    TextStyle? cardMedium,
    TextStyle? smallButton,
    TextStyle? cardLarge,
    TextStyle? settingsTitle,
  }) {
    return AppTextStyles(
      cardMedium: cardMedium ?? this.cardMedium,
      smallButton: smallButton ?? this.smallButton,
      cardLarge: cardLarge ?? this.cardLarge,
      settingsTitle: settingsTitle ?? this.settingsTitle,
    );
  }

  @override
  AppTextStyles lerp(AppTextStyles? other, double t) {
    if (other is! AppTextStyles) {
      return this;
    }
    return AppTextStyles(
      cardMedium: cardMedium,
      smallButton: smallButton,
      cardLarge: cardLarge,
      settingsTitle: settingsTitle,
    );
  }
}

const TextStyleLight = AppTextStyles(
  cardMedium: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.easyDarkGreyColor,
  ),
  smallButton: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.whiteColor,
  ),
  cardLarge: TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.w600,
    color: AppColors.inkColor,
  ),
  settingsTitle: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Color(0xff686868),
  ),
);
