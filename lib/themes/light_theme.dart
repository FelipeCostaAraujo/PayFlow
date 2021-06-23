import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_colors.dart';

ThemeData lightTheme() {
  final brightness = Brightness.light;
  final primaryColor = AppColors.primary;
  final backgroundColor = AppColors.background;

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

  return ThemeData(
      brightness: brightness,
      appBarTheme: AppBarTheme(
          centerTitle: true
      ),
      primaryColor: primaryColor,
      backgroundColor: backgroundColor,
      scaffoldBackgroundColor: backgroundColor,
      accentColor: Colors.black,
  );
}
