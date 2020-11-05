import 'package:flutter/material.dart';

class DarkTheme {
  static ThemeData getDarkTheme() => ThemeData(
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.deepPurpleAccent,
          elevation: 2,
        ),
        scaffoldBackgroundColor: Color.fromARGB(255, 48, 48, 48),
        appBarTheme: AppBarTheme(
          color: Color.fromARGB(255, 48, 48, 48),
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
        colorScheme: ColorScheme.light(
          primary: Colors.black,
          onPrimary: Colors.black,
          primaryVariant: Colors.black,
          secondary: Colors.red,
        ),
        cardTheme: CardTheme(
          color: Colors.black,
        ),
        iconTheme: IconThemeData(
          color: Colors.white54,
        ),
      );
}
