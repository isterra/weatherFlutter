import 'package:flutter/material.dart';

class LigthTheme {
  static ThemeData getLigthTheme() => ThemeData(
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Color.fromARGB(255, 10, 125, 255),
          elevation: 2,
        ),
      );
}
