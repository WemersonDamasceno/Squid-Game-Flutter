import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RoundColor {
  RoundColor._(); // this basically makes it so you can instantiate this class

  static const pink = 0xffe84280;

  static const MaterialColor primary = MaterialColor(
    pink,
    <int, Color>{
      50: Color(0xffe84280),
      100: Color(0xffe84280),
      200: Color(0xffe84280),
      300: Color(0xffe84280),
      400: Color(0xffe84280),
      500: Color(pink),
      600: Color(0xffe84280),
      700: Color(0xffe84280),
      800: Color(0xffe84280),
      900: Color(0xffe84280),
    },
  );
}
