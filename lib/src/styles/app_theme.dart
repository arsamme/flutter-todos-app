import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData light({required String fontFamily}) => ThemeData(
        brightness: Brightness.light,
        fontFamily: fontFamily,

        /// Colors
        colorScheme: const ColorScheme.light(
          primary: Colors.black,
          background: Colors.white,
          error: Colors.red,
        ),
        disabledColor: const Color(0xffd0d0d0),
        scaffoldBackgroundColor: Colors.white,

        /// AppBar
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          titleTextStyle: TextStyle(
            fontFamily: fontFamily,
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.black,
          ),
          centerTitle: false,
          elevation: 0,
        ),

        /// Texts
        textTheme: TextTheme(
          headline1: TextStyle(
            fontFamily: fontFamily,
            color: const Color(0xff000000),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          headline2: TextStyle(
            fontFamily: fontFamily,
            color: const Color(0xff000000),
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          headline3: TextStyle(
            fontFamily: fontFamily,
            color: const Color(0xff000000),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          headline4: TextStyle(
            fontFamily: fontFamily,
            color: const Color(0xff000000),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          headline5: TextStyle(
            fontFamily: fontFamily,
            color: const Color(0xff000000),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          subtitle1: TextStyle(
            color: const Color(0xff000000),
            fontFamily: fontFamily,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          subtitle2: TextStyle(
            color: const Color(0xff808080),
            fontFamily: fontFamily,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          bodyText1: TextStyle(
            color: const Color(0xff404040),
            fontFamily: fontFamily,
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
          bodyText2: TextStyle(
            color: Colors.black,
            fontFamily: fontFamily,
            fontSize: 14,
            fontWeight: FontWeight.w300,
          ),
        ),

        /// Divider
        dividerTheme: const DividerThemeData(
          color: Color(0xffE1DDDD),
          thickness: 1,
        ),
      );
}
