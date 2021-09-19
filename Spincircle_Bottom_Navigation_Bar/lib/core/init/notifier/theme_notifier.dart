import 'package:flutter/material.dart';
import 'package:spincircle_bottom_nav_bar/core/constants/app_theme_enum.dart';
import 'package:spincircle_bottom_nav_bar/core/init/theme/app_theme_light.dart';

class ThemeNotifier extends ChangeNotifier {
  ThemeData _currentTheme = AppThemeLight.instance.theme;

  ThemeData get currentTheme => _currentTheme;

  void changeValue(ThemeEnum theme) {
    if (theme == ThemeEnum.LIGHT) {
      _currentTheme = AppThemeLight.instance.theme;
    } else {
      _currentTheme = ThemeData.dark();
    }
    notifyListeners();
  }
}
