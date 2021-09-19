import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spincircle_bottom_bar/modals.dart';
import 'package:spincircle_bottom_bar/spincircle_bottom_bar.dart';
import 'package:spincircle_bottom_nav_bar/core/constants/bottom_nav_bar_constants.dart';
import 'package:spincircle_bottom_nav_bar/core/init/notifier/navigation_notifier.dart';

class Home extends StatefulWidget {
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
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text("Flutter Example"),
        ),
        body: SpinCircleBottomBarHolder(
          bottomNavigationBar: SCBottomBarDetails(
              circleColors: [Colors.white, Colors.orange, Colors.red],
              iconTheme: const IconThemeData(color: Colors.black45),
              activeIconTheme: const IconThemeData(color: Colors.orangeAccent),
              backgroundColor: Colors.white,
              activeTitleStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
              actionButtonDetails: SCActionButtonDetails(
                  color: Colors.red,
                  icon: const Icon(Icons.expand_less, color: Colors.black45),
                  elevation: 2),
              elevation: 2.0,
              items: [
                SCBottomBarItem(
                    icon: Icons.home,
                    title: "Home",
                    onPressed: () {
                      drawerStateInfo.changeBody(
                          BottomNavBarConstant.HOME, context);
                    }),
                SCBottomBarItem(
                    icon: Icons.comment,
                    title: "Details",
                    onPressed: () {
                      drawerStateInfo.changeBody(
                          BottomNavBarConstant.DETAILS, context);
                    }),
                SCBottomBarItem(
                    icon: Icons.person,
                    title: "User",
                    onPressed: () {
                      drawerStateInfo.changeBody(
                          BottomNavBarConstant.USER, context);
                    }),
                SCBottomBarItem(
                    icon: Icons.notifications,
                    title: "Notifications",
                    onPressed: () {
                      drawerStateInfo.changeBody(
                          BottomNavBarConstant.NOTIFICATIONS, context);
                    }),
              ],
              circleItems: [
                SCItem(
                    icon: const Icon(
                      Icons.add,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      drawerStateInfo.changeBody(
                          BottomNavBarConstant.ADDPERSON, context);
                    }),
                SCItem(
                    icon: const Icon(
                      Icons.print,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      drawerStateInfo.changeBody(
                          BottomNavBarConstant.PRINT, context);
                    }),
                SCItem(
                    icon: const Icon(
                      Icons.map,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      drawerStateInfo.changeBody(
                          BottomNavBarConstant.MAP, context);
                    }),
              ],
              bnbHeight: 80),
          child: drawerStateInfo.viewList[drawerStateInfo.currentBody]!,
        ),
      ),
    );
  }
}
