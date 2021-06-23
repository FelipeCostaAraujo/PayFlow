import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData lightTheme() {
  final brightness = Brightness.light;
  final primaryColor = Color.fromRGBO(16, 48, 128, 1);
  final primaryColorDark = Color.fromRGBO(0,0,128, 1);
  //final primaryColorLight = Color.fromRGBO(3, 73, 173, 1);
  final primaryColorLight = Colors.cyan;
  final backgroundColor = Colors.grey[100];

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

  return ThemeData(
      brightness: brightness,
      appBarTheme: AppBarTheme(
          centerTitle: true
      ),
      inputDecorationTheme: InputDecorationTheme(
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: primaryColorLight)),
          focusedBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: primaryColor)),
          alignLabelWithHint: true),
      primaryColor: primaryColor,
      primaryColorDark: primaryColorDark,
      primaryColorLight: primaryColorLight,
      backgroundColor: backgroundColor,
      buttonColor: primaryColor,
      accentColor: Colors.black,
      textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: primaryColorDark)),
      buttonTheme: ButtonThemeData(
          colorScheme: ColorScheme.light(primary: primaryColor),
          buttonColor: primaryColor,
          splashColor: primaryColorLight,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          textTheme: ButtonTextTheme.primary,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))
    //fontFamily: 'Montserrat',
  );
}
