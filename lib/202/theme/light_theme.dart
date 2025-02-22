import 'package:flutter/material.dart';

class LightTheme {
  final _lightColor = _LightColor();

  late ThemeData theme;

  LightTheme() {
    theme = ThemeData(
        appBarTheme: AppBarTheme(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(10),
            ),
          ),
        ),
        scaffoldBackgroundColor: Colors.white70,
        floatingActionButtonTheme:
            FloatingActionButtonThemeData(backgroundColor: Colors.green),
        textTheme: ThemeData().textTheme.copyWith(
              titleMedium:
                  TextStyle(fontSize: 25, color: _lightColor._textcolor),
            ),
        checkboxTheme: CheckboxThemeData(
          side: BorderSide(color: Colors.green),
        ));
  }
}

class _LightColor {
  final Color _textcolor = Colors.black;
}
