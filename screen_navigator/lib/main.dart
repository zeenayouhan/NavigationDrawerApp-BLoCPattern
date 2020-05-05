import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 	Drawer(
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
                
                // bloc.updateNavigation("Home");
                
              },
            ),
            ListTile(
              title: Text("Page One"),
              onTap: () {
                
                Navigator.of(context).pop();
                // bloc.updateNavigation("PageOne");
                
              },
            ),
            ListTile(
              title: Text("Page Two"),
              onTap: () {
                
                Navigator.of(context).pop();
                
                // bloc.updateNavigation("PageTwo");
              },
            ),
          ],
        ),
      ),
      );
  }
}
