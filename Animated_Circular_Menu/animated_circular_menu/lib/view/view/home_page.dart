import 'package:animated_circular_menu/core/constants/bottom_nav_bar_constants.dart';
import 'package:animated_circular_menu/core/init/notifier/navigation_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    context.read<NavigationNotifier>().canPopBody = BottomNavBarConstant.NONE;

    return Container(
      child: Center(
        child: Text("Home"),
      ),
    );
  }
}
