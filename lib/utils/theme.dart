import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.orangeColor,
    scaffoldBackgroundColor: AppColors.whiteColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.whiteColor,
      surfaceTintColor: AppColors.whiteColor,
      elevation: 0,
    ),

    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      elevation: 0,
      backgroundColor: AppColors.whiteColor,
      selectedItemColor: AppColors.orangeColor,
      unselectedItemColor: AppColors.easyDarkGreyColor,
      selectedLabelStyle: TextStyle(height: 4),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(AppColors.orangeColor),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        maximumSize: const MaterialStatePropertyAll(Size(double.infinity, 50)),
      ),
    ),
    textTheme: const TextTheme(
      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: AppColors.blackColor,
      ),
      titleSmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppColors.blackColor,
      ),
      labelLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: Color(0xff1a1b2d),
      ),
      labelMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: AppColors.orangeColor,
      ),
      labelSmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppColors.darkColor,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: AppColors.darkColor,
      ),
    ),
  );
}

class AppColors {
  AppColors._();

  static const whiteColor = Color.fromRGBO(255, 255, 255, 1);
  static const lightGreyColor = Color.fromRGBO(247, 247, 247, 1);
  static const easyLightGreyColor = Color.fromRGBO(243, 244, 246, 1);
  static const greyColor = Color(0xffc4c4c4);
  static const darkGreyColor = Color.fromRGBO(117, 117, 117, 1);
  static const easyDarkGreyColor = Color.fromRGBO(78, 78, 78, 1);
  static const easyDarkColor = Color.fromRGBO(85, 85, 85, 1);
  static const orangeColor = Color(0xfff4881c);
  static const darkColor = Color.fromRGBO(51, 51, 51, 1);
  static const blackColor = Color.fromRGBO(0, 0, 0, 1);
}

extension BuildContextX on BuildContext{
  ThemeData get themeData => Theme.of(this);

  TextTheme get textTheme => Theme.of(this).textTheme;

}
