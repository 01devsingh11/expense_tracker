import 'package:expense_tracer_app/src/core/extension/theme_extension.dart';
import 'package:expense_tracer_app/src/core/theme/colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.white,

      ),
      backgroundColor: AppColors.primary,
      titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
    ),
    scaffoldBackgroundColor: AppColors.primary,
    extensions: [
      CustomThemeExtension(
        primaryColor: AppColors.primary,
        primaryContainerColor: AppColors.primary,
        secondaryColor: AppColors.white,
        secondaryContainerColor: AppColors.white,
      ),
    ],
  );
  static ThemeData darkTheme = ThemeData();
}
