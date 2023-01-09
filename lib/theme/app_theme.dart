import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    // Primary color
    primaryColor: primaryColor,
    // Appbar Theme
    appBarTheme: const AppBarTheme(
      // backgroundColor: primaryColor,
      color: primaryColor,
      elevation: 0,
    ),
    // TextButton Theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: primaryColor,
      ),
    ),
    // FABs
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
      elevation: 5,
    ),
    // ElevatedButton
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.indigo,
        shape: const StadiumBorder(),
        elevation: 0,
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: primaryColor,
    // Appbar Theme
    appBarTheme: const AppBarTheme(
      // backgroundColor: primaryColor,
      color: primaryColor,
      elevation: 0,
    ),
    scaffoldBackgroundColor: Colors.black,
  );
}
