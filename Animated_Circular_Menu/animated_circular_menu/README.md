# Animated Circular Menu

Circular Menu with Bottom Navigation Bar and Provider State Management

# Demo
<!--
![](https://raw.githubusercontent.com/hasan-hm1/circular_menu/master/doc/top_right.gif = 250x250)
-->

<p float="left">  
  <img src="https://raw.githubusercontent.com/hasan-hm1/circular_menu/master/doc/bottom_center.gif" width="250">
<!--  <img src="https://raw.githubusercontent.com/hasan-hm1/circular_menu/master/doc/center.gif" width="250"> -->
  <img src="https://raw.githubusercontent.com/hasan-hm1/circular_menu/master/doc/top_right.gif" width="250">
  <img src="https://user-images.githubusercontent.com/67058617/135347638-19db4356-31c6-4195-ab55-c471163778df.png" width="300" height="515">

</p>

# Usage
Add Circular Menu to your Scaffold's body, as follows:


```dart
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
```

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
