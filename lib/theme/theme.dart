import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFF2D0C57);
  static const String fontFamily = 'SFProText';
  static ColorScheme colorScheme = ColorScheme.fromSeed(
      seedColor: primaryColor, brightness: Brightness.light);

  static ThemeData get lightTheme {
    final ThemeData base = ThemeData.light();

    return base.copyWith(
      colorScheme: colorScheme,
      textTheme: base.textTheme
          .copyWith(
            titleLarge: const TextStyle(
              fontFamily: fontFamily,
              fontWeight: FontWeight.bold,
              fontSize: 34,
              color: primaryColor,
            ),
            bodyLarge: const TextStyle(
              fontFamily: fontFamily,
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: primaryColor,
            ),
            bodyMedium: const TextStyle(
              fontFamily: fontFamily,
              fontSize: 16,
              color: Color(0xFF9586A8),
            ),
            bodySmall: const TextStyle(
              fontFamily: fontFamily,
              fontSize: 12,
              color: Color(0xFF9586A8),
            ),
          )
          .apply(
            fontFamily: fontFamily,
          ),
    );
  }
}
