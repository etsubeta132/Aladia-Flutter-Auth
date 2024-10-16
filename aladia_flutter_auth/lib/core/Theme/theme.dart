import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  splashColor: Colors.transparent,
  hoverColor: Colors.transparent,
  colorScheme: const ColorScheme.light(
    surfaceContainer: Colors.white,
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  splashColor: Colors.transparent,
  hoverColor: Colors.transparent,
  colorScheme: const ColorScheme.dark(
    surfaceContainer: Colors.black,
  ),
);
