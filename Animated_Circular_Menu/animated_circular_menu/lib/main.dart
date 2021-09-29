import 'package:animated_circular_menu/view/view/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/init/notifier/provider_list.dart';
import 'core/init/notifier/theme_notifier.dart';

void main() {
  runApp(MyApp());
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
