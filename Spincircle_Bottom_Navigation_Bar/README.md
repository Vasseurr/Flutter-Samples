# Spin Circle Bottom Navigation Bar

Spin Circle Bottom Navigation Bar with Provider State Management 

# Demo
![](https://github.com/retroportalstudio/spincircle_bottom_bar/blob/master/spincircle_bottom_bar.gif)

## Usage
Add SpinCircleBottomBarHolder to your Scaffold's body, as follows:

```dart
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

```

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
