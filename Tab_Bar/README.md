# Tab Bar

Tab Bar with Provider State Management 

## Demo
![s1](https://user-images.githubusercontent.com/67058617/134079853-d7e4c8a7-3775-4884-9e3f-52b5f12608fd.png)

## Usage
To Use, simply add Tab Bar to your build function, as follows:

```dart

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

```

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
