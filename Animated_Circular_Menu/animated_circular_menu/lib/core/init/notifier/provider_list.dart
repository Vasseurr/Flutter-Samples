import 'package:animated_circular_menu/core/init/notifier/theme_notifier.dart';
import 'package:animated_circular_menu/view/viewmodel/home_viewmodel.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'navigation_notifier.dart';

class ApplicationProvider {
  static ApplicationProvider? _instance;

  ApplicationProvider._init();

  static ApplicationProvider get instance {
    if (_instance == null) {
      _instance = ApplicationProvider._init();
    }
    return _instance!;
  }

  List<SingleChildWidget> dependItems = [
    ChangeNotifierProvider<NavigationNotifier>(
      create: (context) => NavigationNotifier(),
    ),
    ChangeNotifierProvider<HomeViewModel>(create: (context) => HomeViewModel()),
    ChangeNotifierProvider<ThemeNotifier>(create: (context) => ThemeNotifier()),
  ];
}
