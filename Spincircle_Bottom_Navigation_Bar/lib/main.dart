// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spincircle_bottom_nav_bar/view/home/view/home.dart';

import 'core/init/notifier/provider_list.dart';
import 'core/init/notifier/theme_notifier.dart';
import 'locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  /*SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then(
    (_) => runApp(MyApp()),*/
  runApp(MyApp());
  // await EasyLocalization.ensureInitialized();
  // PreferencesManager.preferencesInit();

  /* runApp(
    EasyLocalization(
        supportedLocales: [
          Locale('tr', 'TR'),
          Locale('es', 'SP'),
          Locale("en", "US")
        ],
        path: 'assets/translations', //
        fallbackLocale: Locale('es', 'SP'),
        startLocale: Locale('tr', 'TR'),
        //startLocale: Locale('es', 'SP'),
        //startLocale: Locale('en', 'US'),
        child: MyApp()),
  );*/
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [...ApplicationProvider.instance.dependItems],
      child: Consumer<ThemeNotifier>(
        builder: (context, value, child) => MaterialApp(
          //localizationsDelegates: context.localizationDelegates,
          //supportedLocales: context.supportedLocales,
          //locale: context.locale,
          //navigatorKey: NavigationService.instance.navigatorKey,
          //onGenerateRoute: NavigationRoute.instance.generateRoute,
          theme: Provider.of<ThemeNotifier>(context).currentTheme,
          debugShowCheckedModeBanner: false,
          title: "Example",
          home: Home(),
        ),
      ),
    );
  }
}
