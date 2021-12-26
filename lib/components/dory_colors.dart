import 'package:flutter/material.dart';

class DoryColors {
  static const int _primaryColorValue = 0xFF151515;
  static const primaryColor = Color(_primaryColorValue);

  static const MaterialColor primaryMeterialColor = MaterialColor(
    _primaryColorValue,
    <int, Color>{
      50: Color(_primaryColorValue),
      100: Color(_primaryColorValue),
      200: Color(_primaryColorValue),
      300: Color(_primaryColorValue),
      400: Color(_primaryColorValue),
      500: Color(_primaryColorValue),
      600: Color(_primaryColorValue),
      700: Color(_primaryColorValue),
      800: Color(_primaryColorValue),
      900: Color(_primaryColorValue),
    },
  );
}
