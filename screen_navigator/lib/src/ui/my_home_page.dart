import 'package:flutter/material.dart';
import "bloc/navigation_provider.dart";
import 'home.dart';
import 'page_one.dart';
import 'page_two.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: Text("Admin"),
                currentAccountPicture: CircleAvatar(child: Icon(Icons.person)),
                accountEmail: Text("12345@gmail.com")),
            ListTile(
              title: Text("Home"),
              onTap: () {
                Navigator.of(context).pop();
                bloc.updateNavigation("Home");
              },
            ),
            ListTile(
              title: Text("Page One"),
              onTap: () {
                Navigator.of(context).pop();
                bloc.updateNavigation("PageOne");
              },
            ),
            ListTile(
              title: Text("Page Two"),
              onTap: () {
                Navigator.of(context).pop();
                bloc.updateNavigation("PageTwo");
              },
            ),
          ],
        ),
      ),
      body: StreamBuilder(
        stream: bloc.getNavigation,
        initialData: bloc.navigationProvider.currentNavigation,
        builder: (context, snapshot) {
          if (bloc.navigationProvider.currentNavigation == "Home") {
            return Home();
          }
          if (bloc.navigationProvider.currentNavigation == "PageOne") {
            return PageOne();
          }
          if (bloc.navigationProvider.currentNavigation == "PageTwo") {
            return PageTwo();
          }
        }, // access the data in our Stream here
      ),
    );
  }
}
