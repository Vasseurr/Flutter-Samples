import 'package:flutter/material.dart';

class ColorSchemeLight {
  static ColorSchemeLight? _instace;
  static ColorSchemeLight get instance {
    if (_instace == null) _instace = ColorSchemeLight._init();
    return _instace!;
  }

  ColorSchemeLight._init();

  final Color primary = Color(0xFF0d4dc4);
  final Color primaryVariant = Color(0xFF1152cb);
  final Color secondary = Color(0xFF21c660);
  final Color back = Color(0xFFf6f6f6);
  final Color cardback = Colors.white;
}
