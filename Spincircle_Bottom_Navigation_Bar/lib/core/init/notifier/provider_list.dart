import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:spincircle_bottom_nav_bar/core/init/notifier/theme_notifier.dart';
import 'package:spincircle_bottom_nav_bar/view/home/viewmodel/home_viewmodel.dart';

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
