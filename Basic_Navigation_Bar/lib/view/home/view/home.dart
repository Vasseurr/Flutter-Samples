import 'package:basic_navigation_bar/core/constants/bottom_nav_bar_constants.dart';
import 'package:basic_navigation_bar/core/init/notifier/navigation_notifier.dart';
import 'package:flutter/material.dart';
import '../../../core/extension/context_extension.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var drawerStateInfo = Provider.of<NavigationNotifier>(context);

    return WillPopScope(
      onWillPop: () => drawerStateInfo.onWillPop(context),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Example"),
        ),
        body: drawerStateInfo.viewList[drawerStateInfo.currentBody],
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
      ),
    );
  }
}
