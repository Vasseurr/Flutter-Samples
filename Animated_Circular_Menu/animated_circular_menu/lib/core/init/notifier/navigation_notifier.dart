import 'package:animated_circular_menu/core/constants/bottom_nav_bar_constants.dart';
import 'package:animated_circular_menu/view/view/details.dart';
import 'package:animated_circular_menu/view/view/home_page.dart';
import 'package:animated_circular_menu/view/view/notifications.dart';
import 'package:animated_circular_menu/view/view/search_page.dart';
import 'package:animated_circular_menu/view/view/settings.dart';
import 'package:animated_circular_menu/view/view/user.dart';
import 'package:flutter/cupertino.dart';

class NavigationNotifier with ChangeNotifier {
  int currentIndex = 0;
  BottomNavBarConstant _currentBody = BottomNavBarConstant.HOME;
  BottomNavBarConstant? canPopBody;

  Map<BottomNavBarConstant, Widget> viewList = {
    BottomNavBarConstant.HOME: HomePage(),
    BottomNavBarConstant.DETAILS: const Details(),
    BottomNavBarConstant.NOTIFICATIONS: Notifications(),
    BottomNavBarConstant.USER: User(),
    BottomNavBarConstant.SEARCH: const SearchPage(),
    BottomNavBarConstant.SETTINGS: const Settings(),
  };

  BottomNavBarConstant get currentBody => _currentBody;

  set currentBody(BottomNavBarConstant appBody) {
    _currentBody = appBody;
    notifyListeners();
  }

  changeBody(BottomNavBarConstant appBody, int index, BuildContext context) {
    canPopBody = BottomNavBarConstant.HOME;
    currentBody = appBody;
    currentIndex = index;
    notifyListeners();
  }

  Future<bool> onWillPop(BuildContext context) async {
    print("OnWillPop");
    if (canPopBody != null) {
      if (canPopBody != BottomNavBarConstant.NONE) {
        currentBody = canPopBody!;
      } else if (canPopBody == BottomNavBarConstant.NONE) {
        return true;
      } else {
        return false;
      }
    }
    return false;
  }
}
