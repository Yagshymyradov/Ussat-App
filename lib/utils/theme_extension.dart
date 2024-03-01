import 'package:flutter/material.dart';

import 'theme.dart';

@immutable
class AppTextStyles extends ThemeExtension<AppTextStyles> {
  final TextStyle? cardMedium;
  final TextStyle? cardLarge;
  final TextStyle? smallButton;

  const AppTextStyles({
    required this.cardMedium,
    required this.smallButton,
    required this.cardLarge,
  });

  @override
  AppTextStyles copyWith({
    TextStyle? cardMedium,
    TextStyle? smallButton,
    TextStyle? cardLarge,
  }) {
    return AppTextStyles(
      cardMedium: cardMedium ?? this.cardMedium,
      smallButton: smallButton ?? this.smallButton,
      cardLarge: cardLarge ?? this.cardLarge,
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
);
