import 'package:basic_navigation_bar/core/constants/bottom_nav_bar_constants.dart';
import 'package:basic_navigation_bar/core/init/notifier/navigation_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    var drawerStateInfo = Provider.of<NavigationNotifier>(context);
    drawerStateInfo.canPopBody = BottomNavBarConstant.HOME;
    return Container(
      child: Center(child: Text("Details")),
    );
  }
}
