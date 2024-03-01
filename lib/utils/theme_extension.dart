import 'package:flutter/material.dart';

import 'theme.dart';

@immutable
class AppTextStyles extends ThemeExtension<AppTextStyles> {
  final TextStyle? cardMedium;
  final TextStyle? smallButton;

  const AppTextStyles({required this.cardMedium, required this.smallButton});

  @override
  AppTextStyles copyWith({TextStyle? cardMedium, TextStyle? smallButton}) {
    return AppTextStyles(
      cardMedium: cardMedium ?? this.cardMedium,
      smallButton: smallButton ?? this.smallButton,
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
);
