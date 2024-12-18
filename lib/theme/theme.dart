import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFF2D0C57);
  static const String fontFamily = 'SFProText';

  static ColorScheme colorScheme = ColorScheme.fromSeed(
    seedColor: primaryColor,
    brightness: Brightness.light,
  );

  static ThemeData get lightTheme {
    final ThemeData base = ThemeData.light();

    return base.copyWith(
      colorScheme: colorScheme,
      textTheme: base.textTheme.copyWith(
        titleLarge: TextStyle(
          fontFamily: fontFamily,
          fontWeight: FontWeight.bold,
          fontSize: 34.sp, 
          color: primaryColor,
        ),
        bodyLarge: TextStyle(
          fontFamily: fontFamily,
          fontWeight: FontWeight.bold,
          fontSize: 18.sp, 
          color: primaryColor,
        ),
        bodyMedium: TextStyle(
          fontFamily: fontFamily,
          fontSize: 16.sp,
          color: const Color(0xFF9586A8),
        ),
        bodySmall: TextStyle(
          fontFamily: fontFamily,
          fontSize: 12.sp,
          color: const Color(0xFF9586A8),
        ),
      ),
    );
  }
}
