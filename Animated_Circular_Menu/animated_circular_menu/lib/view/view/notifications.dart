import 'package:animated_circular_menu/core/constants/bottom_nav_bar_constants.dart';
import 'package:animated_circular_menu/core/init/notifier/navigation_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var drawerStateInfo = Provider.of<NavigationNotifier>(context);
    drawerStateInfo.canPopBody = BottomNavBarConstant.HOME;
    return Container(
      child: Center(child: Text("Notifications")),
    );
  }
}
