import 'package:animated_circular_menu/core/constants/bottom_nav_bar_constants.dart';
import 'package:animated_circular_menu/core/init/notifier/navigation_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var drawerStateInfo = Provider.of<NavigationNotifier>(context);
    drawerStateInfo.canPopBody = BottomNavBarConstant.HOME;
    // ignore: avoid_unnecessary_containers
    return Container(
      child: const Center(
        child: Text("Search Page"),
      ),
    );
  }
}
