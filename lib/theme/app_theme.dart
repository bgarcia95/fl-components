import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primaryColor,
    // Appbar Theme
    appBarTheme: const AppBarTheme(
      // backgroundColor: primaryColor,
      color: primaryColor,
      elevation: 0,
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
