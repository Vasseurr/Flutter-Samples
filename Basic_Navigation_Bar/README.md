# Basic Navigation Bar

Navigation Bar with Provider State Management 

## Demo
![home](https://user-images.githubusercontent.com/67058617/133930003-50555d2f-d305-4a06-b419-80d988e9f2b7.png)
![notifications](https://user-images.githubusercontent.com/67058617/133930005-e179ab7b-fa8e-45e4-8850-498deff8052c.png)

## Usage
To Use, simply add BottomNavigationBar to your Scaffold's body, as follows:

```dart
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

```

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
