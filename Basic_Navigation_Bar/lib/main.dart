import 'package:basic_navigation_bar/view/home/view/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'core/init/notifier/provider_list.dart';
import 'core/init/notifier/theme_notifier.dart';
import 'locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  /* SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then(
    (_) => runApp(MyApp()),
  );*/
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
          home: const Home(),
        ),
      ),
    );
  }
}
