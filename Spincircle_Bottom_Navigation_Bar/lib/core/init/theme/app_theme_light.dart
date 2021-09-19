import 'package:flutter/material.dart';

import '../../constants/app_constants.dart';
import 'app_theme.dart';
import 'light/color_scheme_light.dart';
import 'light/light_theme_interface.dart';

class AppThemeLight extends AppTheme with ILightTheme {
  static AppThemeLight? _instance;
  static AppThemeLight get instance {
    if (_instance == null) _instance = AppThemeLight._init();
    return _instance!;
  }

  AppThemeLight._init();

  // ThemeData get theme => redTheme;
  ThemeData get theme => ThemeData(
        fontFamily: AppConstants.FONT_FAMILY,
        colorScheme: _appColorScheme(),
        textTheme: textTheme(),
        accentColor: ColorSchemeLight.instance.primaryVariant,
        canvasColor: Colors.white,
        appBarTheme: _appBarTheme(),
        backgroundColor: ColorSchemeLight.instance.back,
        scaffoldBackgroundColor: ColorSchemeLight.instance.back,
        buttonColor: ColorSchemeLight.instance.primary,
        iconTheme:
            IconThemeData(color: ColorSchemeLight.instance.cardback).copyWith(),
        floatingActionButtonTheme:
            ThemeData.light().floatingActionButtonTheme.copyWith(),
        //     tabBarTheme: tabBarTheme(),
      ).copyWith();

  TextTheme textTheme() {
    return TextTheme(
        headline1: textThemeLight.headline1,
        headline2: textThemeLight.headline2,
        headline3: textThemeLight.headline3,
        headline4: textThemeLight.headline4,
        headline5: textThemeLight.headline5,
        overline: textThemeLight.headline3);
  }

  ColorScheme _appColorScheme() {
    return ColorScheme(
        primary: colorSchemeLight.primary,
        primaryVariant: colorSchemeLight.primaryVariant,
        secondary: colorSchemeLight.secondary,
        secondaryVariant: colorSchemeLight.cardback,
        surface: Colors.white,
        background: colorSchemeLight.back,
        error: Colors.red[900]!,
        onPrimary: Colors.blue.shade300,
        onSecondary: Colors.black38,
        onSurface: Colors.white30,
        onBackground: Colors.black12,
        onError: Colors.red,
        brightness: Brightness.light);
  }

  AppBarTheme _appBarTheme() {
    return AppBarTheme(
        backgroundColor: colorSchemeLight.primary,
        iconTheme: IconThemeData(
          color: colorSchemeLight.cardback,
          size: 32,
        )).copyWith();
  }
}
