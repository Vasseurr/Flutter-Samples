import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: const Text("Flutter Example"),
          bottom: const TabBar(
            // isScrollable: true, //scrollable horizontally
            tabs: [
              Tab(
                icon: Icon(Icons.computer),
                child: Text("Electronic"),
              ),
              Tab(
                icon: Icon(Icons.home),
                child: Text("Home"),
              ),
              Tab(
                icon: Icon(Icons.shop),
                child: Text("Supermarket"),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            buildElectroWidget(),
            buildHomeWidget(),
            buildSupermarketWidget(),
            /*Icon(Icons.flight, size: 350),
            Icon(Icons.directions_bike, size: 350),
            Icon(Icons.directions_boat, size: 350),*/
          ],
        ),
      ),
    );
  }

  buildElectroWidget() {
    return Container(
      child: Center(
        child: Text("Electronic"),
      ),
    );
  }

  buildHomeWidget() {
    return Container(
      child: Center(
        child: Text("Home"),
      ),
    );
  }

  buildSupermarketWidget() {
    return Container(
      child: Center(
        child: Text("Supermarket"),
      ),
    );
  }
}
