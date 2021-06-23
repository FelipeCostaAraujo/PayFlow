import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_colors.dart';

ThemeData lightTheme() {
  final brightness = Brightness.light;
  final primaryColor = AppColors.primary;
  final backgroundColor = Colors.grey[100];

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

  return ThemeData(
      brightness: brightness,
      appBarTheme: AppBarTheme(
          centerTitle: true
      ),
      primaryColor: primaryColor,
      backgroundColor: backgroundColor,
      accentColor: Colors.black,
  );
}
