import 'package:flutter/material.dart';

class AppColors {
  static Color primaryColor = const Color.fromARGB(255, 36, 134, 36);
  static Color primaryAccent = const Color.fromRGBO(50, 181, 49, 1);
  static Color secondaryColor = const Color.fromRGBO(45, 45, 45, 1);
  static Color secondaryAccent = const Color.fromRGBO(35, 35, 35, 1);
  static Color titleColor = const Color.fromRGBO(255, 255, 255, 1);
  static Color textColor = const Color.fromARGB(255, 210, 210, 210);
  static Color successColor = const Color.fromRGBO(22, 174, 88, 1);
  static Color highlightColor = const Color.fromRGBO(255, 241, 28, 1);
}

ThemeData primaryTheme = ThemeData(
    //seed color
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
    ),

    //scaffold color
    scaffoldBackgroundColor: AppColors.secondaryAccent,

    //appbar theme
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.secondaryColor,
      foregroundColor: AppColors.textColor,
      surfaceTintColor: Colors.transparent,
      centerTitle: true,
    ),
    textTheme: TextTheme(
        bodyMedium: TextStyle(
          color: AppColors.textColor,
          fontSize: 16,
          letterSpacing: 1,
        ),
        headlineMedium: TextStyle(
          color: AppColors.titleColor,
          fontSize: 16,
          fontWeight: FontWeight.bold,
          letterSpacing: 1,
        ),
        titleMedium: TextStyle(
          color: AppColors.titleColor,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          letterSpacing: 2,
        )),

    // card theme
    cardTheme: CardTheme(
      color: AppColors.secondaryColor.withOpacity(0.5),
      shape: const RoundedRectangleBorder(),
      shadowColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: 16),
      surfaceTintColor: Colors.transparent,
    ),

    //input decoration theme
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.secondaryColor.withOpacity(0.5),
      border: InputBorder.none,
      labelStyle: TextStyle(color: AppColors.textColor),
      prefixIconColor: AppColors.textColor,
    ),

    //dialog theme
    dialogTheme: DialogTheme(
      backgroundColor: AppColors.secondaryAccent,
      surfaceTintColor: Colors.transparent,
    ));
