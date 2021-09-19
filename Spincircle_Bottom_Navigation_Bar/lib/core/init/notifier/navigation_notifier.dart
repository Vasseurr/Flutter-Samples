import 'package:flutter/cupertino.dart';
import 'package:spincircle_bottom_nav_bar/core/constants/bottom_nav_bar_constants.dart';
import 'package:spincircle_bottom_nav_bar/view/home/view/add_person.dart';
import 'package:spincircle_bottom_nav_bar/view/home/view/details.dart';
import 'package:spincircle_bottom_nav_bar/view/home/view/home_page.dart';
import 'package:spincircle_bottom_nav_bar/view/home/view/map.dart';
import 'package:spincircle_bottom_nav_bar/view/home/view/notifications.dart';
import 'package:spincircle_bottom_nav_bar/view/home/view/print.dart';
import 'package:spincircle_bottom_nav_bar/view/home/view/user.dart';

class NavigationNotifier with ChangeNotifier {
  BottomNavBarConstant _currentBody = BottomNavBarConstant.HOME;
  BottomNavBarConstant? canPopBody;

  Map<BottomNavBarConstant, Widget> viewList = {
    BottomNavBarConstant.HOME: HomePage(),
    BottomNavBarConstant.DETAILS: const Details(),
    BottomNavBarConstant.NOTIFICATIONS: Notifications(),
    BottomNavBarConstant.USER: User(),
    BottomNavBarConstant.ADDPERSON: AddPersonPage(),
    BottomNavBarConstant.PRINT: PrintPage(),
    BottomNavBarConstant.MAP: MapPage(),
  };

  BottomNavBarConstant get currentBody => _currentBody;

  set currentBody(BottomNavBarConstant appBody) {
    _currentBody = appBody;
    notifyListeners();
  }

  changeBody(BottomNavBarConstant appBody, BuildContext context) {
    canPopBody = BottomNavBarConstant.HOME;
    currentBody = appBody;
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
