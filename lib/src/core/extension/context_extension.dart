import 'package:expense_tracer_app/src/core/extension/theme_extension.dart';
import 'package:flutter/material.dart';

extension CustomThemeGetter on BuildContext {
  CustomThemeExtension get theme =>
      Theme.of(this).extension<CustomThemeExtension>()!;
}

extension DimensionExtension on BuildContext {
  double get screenHeight => MediaQuery.of(this).size.height;

  double get screenWidth => MediaQuery.of(this).size.width;

  double heightPercent(double percentage) => screenHeight * percentage;

  double widthPercent(double percentage) => screenWidth * percentage;

  double get largeContainerBorderRadius => 10;

  double get mediumContainerBorderRadius => 8;

  double get smallContainerBorderRadius => 5;
}

extension PaddingExtension on BuildContext {
  EdgeInsetsGeometry get largePadding => EdgeInsetsGeometry.all(12);

  EdgeInsetsGeometry get mediumPadding => EdgeInsetsGeometry.all(8);

  EdgeInsetsGeometry get smallPadding => EdgeInsetsGeometry.all(5);
}
