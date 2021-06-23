import 'package:flutter/material.dart';
import 'app_colors.dart';


ThemeData darkTheme() {
  final brightness = Brightness.dark;
  final primaryColor = AppColors.primary;
  final backgroundColor = Colors.grey[800];

  //SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

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
