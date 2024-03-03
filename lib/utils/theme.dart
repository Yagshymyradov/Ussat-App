import 'package:flutter/material.dart';
import 'theme_extension.dart';

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
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(AppColors.orangeColor),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      elevation: 0,
      backgroundColor: AppColors.whiteColor,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(AppColors.orangeColor),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9),
          ),
        ),
        maximumSize: const MaterialStatePropertyAll(Size(double.infinity, 50)),
      ),
    ),
    tabBarTheme: const TabBarTheme(
      indicator: BoxDecoration(
        border: BorderDirectional(bottom: BorderSide.none),
      ),
      dividerColor: Color(0xff979797),
      tabAlignment: TabAlignment.start,
      labelColor: AppColors.orangeColor,
      labelPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
    ),
    dividerColor: const Color(0xff979797),
    dividerTheme: const DividerThemeData(
      color: AppColors.dividerColor,
      space: 0,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.lightGreyColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.orangeColor),
      ),
      floatingLabelStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: AppColors.orangeColor,
      ),
      labelStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: AppColors.easyDarkGreyColor,
      ),
    ),
    extensions: const [TextStyleLight],
    textTheme: const TextTheme(
      displayMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: AppColors.easyDarkGreyColor,
      ),
      displaySmall: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w500,
        color: AppColors.darkInkColor,
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: AppColors.blackColor,
      ),
      titleSmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppColors.easyDarkGreyColor,
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
      bodyLarge: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: AppColors.inkColor,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: AppColors.darkColor,
      ),
      bodySmall: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w500,
        color: AppColors.easyInkColor,
      ),
      headlineMedium: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w700,
        color: AppColors.whiteColor,
      ),
      headlineSmall: TextStyle(
        color: AppColors.easyDarkGreyColor,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}

class AppColors {
  AppColors._();

  static const whiteColor = Color.fromRGBO(255, 255, 255, 1);
  static const lightColor = Color(0xfff5f5f7);
  static const easyLightGreyColor = Color.fromRGBO(243, 244, 246, 1);
  static const dividerColor = Color(0xffeeeeee);
  static const lightGreyColor = Color(0xffd1d3d4);
  static const greyColor = Color(0xffc4c4c4);
  static const borderGreyColor = Color(0xff7c7c7c);
  static const easyDarkGreyColor = Color(0xff6f767e);

  // static const darkGreyColor = Color(0xff686868);
  static const lightBlueColor = Color(0xffb5e4ca);
  static const greenColor = Color(0xff53b175);
  static const orangeColor = Color(0xfff4881c);
  static const lightOrangeColor = Color(0xffffbc99);
  static const easyInkColor = Color(0xff272b30);
  static const inkColor = Color(0xff1A1D1F);
  static const darkInkColor = Color(0xff1a1b2d);
  static const darkColor = Color.fromRGBO(51, 51, 51, 1);
  static const blackColor = Color.fromRGBO(0, 0, 0, 1);
}

extension BuildContextX on BuildContext {
  ThemeData get themeData => Theme.of(this);

  TextTheme get textTheme => Theme.of(this).textTheme;

  AppTextStyles get appTextTheme => Theme.of(this).extension<AppTextStyles>()!;
}
