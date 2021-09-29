import 'dart:math';

import 'package:animated_circular_menu/core/constants/bottom_nav_bar_constants.dart';
import 'package:animated_circular_menu/core/init/notifier/navigation_notifier.dart';
import 'package:circular_menu/circular_menu.dart';
import 'package:flutter/material.dart';
import '../../../core/extension/context_extension.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<CircularMenuState> key = GlobalKey<CircularMenuState>();

  @override
  Widget build(BuildContext context) {
    var drawerStateInfo = Provider.of<NavigationNotifier>(context);
    return WillPopScope(
      onWillPop: () => drawerStateInfo.onWillPop(context),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text("Flutter Example"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: context.colors.background,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          currentIndex: drawerStateInfo.currentIndex,
          onTap: (index) async {
            switch (index) {
              case 0:
                drawerStateInfo.changeBody(
                    BottomNavBarConstant.HOME, 0, context);
                break;
              case 1:
                drawerStateInfo.changeBody(
                    BottomNavBarConstant.USER, 1, context);
                break;
              case 2:
                drawerStateInfo.changeBody(
                    BottomNavBarConstant.NOTIFICATIONS, 2, context);
                break;
              default:
                drawerStateInfo.changeBody(
                    BottomNavBarConstant.DETAILS, 3, context);
                break;
            }
          },
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(
                Icons.home,
                size: 15,
              ),
            ),
            BottomNavigationBarItem(
              label: "User",
              icon: Icon(
                Icons.verified_user,
                size: 15,
              ),
            ),
            BottomNavigationBarItem(
              label: "Notifications",
              icon: Icon(
                Icons.notification_add,
                size: 15,
              ),
            ),
            BottomNavigationBarItem(
              label: "Details",
              icon: Icon(
                Icons.details,
                size: 15,
              ),
            ),
          ],
        ),
        body: CircularMenu(
          animationDuration: const Duration(milliseconds: 500),
          alignment: Alignment.topRight,
          toggleButtonColor: Colors.pink,
          toggleButtonSize: 30,
          startingAngleInRadian: 2.55 * pi,
          endingAngleInRadian: 2.99 * pi,
          backgroundWidget: Center(
              child: drawerStateInfo.viewList[drawerStateInfo.currentBody]!),
          key: key,
          items: [
            CircularMenuItem(
              enableBadge: true,
              badgeLabel: "Home",
              badgeColor: Colors.green,
              badgeRadius: 15,
              badgeTextColor: Colors.white,
              badgeRightOffet: 0,
              badgeTopOffet: 0,
              icon: Icons.home,
              onTap: () {
                drawerStateInfo.changeBody(BottomNavBarConstant.HOME,
                    drawerStateInfo.currentIndex, context);
              },
              color: Colors.green,
              iconColor: Colors.white,
            ),
            CircularMenuItem(
              enableBadge: true,
              badgeLabel: "Search",
              badgeColor: Colors.orange,
              badgeRadius: 15,
              badgeTextColor: Colors.white,
              badgeRightOffet: 0,
              badgeTopOffet: 0,
              icon: Icons.search,
              onTap: () {
                drawerStateInfo.changeBody(BottomNavBarConstant.SEARCH,
                    drawerStateInfo.currentIndex, context);
              },
              color: Colors.orange,
              iconColor: Colors.white,
            ),
            CircularMenuItem(
              enableBadge: true,
              badgeLabel: "Settings",
              badgeColor: Colors.deepPurple,
              badgeRadius: 15,
              badgeTextColor: Colors.white,
              badgeRightOffet: 0,
              badgeTopOffet: 0,
              icon: Icons.settings,
              onTap: () {
                drawerStateInfo.changeBody(BottomNavBarConstant.SETTINGS,
                    drawerStateInfo.currentIndex, context);
              },
              color: Colors.deepPurple,
              iconColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
