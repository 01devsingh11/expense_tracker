import 'package:flutter/material.dart';

class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {
  final Color primaryColor;
  final Color secondaryColor;
  final Color primaryContainerColor;
  final Color secondaryContainerColor;

  CustomThemeExtension({
    required this.primaryColor,
    required this.primaryContainerColor,
    required this.secondaryColor,
    required this.secondaryContainerColor,
  });

  @override
  ThemeExtension<CustomThemeExtension> copyWith({
    Color? primaryColor,
    Color? secondaryColor,
    Color? primaryContainerColor,
    Color? secondaryContainerColor,
  }) {
    return CustomThemeExtension(
      primaryColor: primaryColor ?? this.primaryColor,
      primaryContainerColor:
          primaryContainerColor ?? this.primaryContainerColor,
      secondaryColor: secondaryColor ?? this.secondaryColor,
      secondaryContainerColor:
          secondaryContainerColor ?? this.secondaryContainerColor,
    );
  }

  @override
  ThemeExtension<CustomThemeExtension> lerp(
    covariant ThemeExtension<CustomThemeExtension>? other,
    double t,
  ) {
    if (other is! CustomThemeExtension) return this;
    return CustomThemeExtension(
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t)!,
      primaryContainerColor:
          Color.lerp(primaryContainerColor, other.primaryContainerColor, t)!,
      secondaryColor: Color.lerp(secondaryColor, other.secondaryColor, t)!,
      secondaryContainerColor:
          Color.lerp(
            secondaryContainerColor,
            other.secondaryContainerColor,
            t,
          )!,
    );
  }
}
