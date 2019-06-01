import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import './page.dart';

void main() => runApp(MyApp());

// main app code here
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            drawer: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  DrawerHeader(
                      child: Center(
                          child: RaisedButton(
                            color: Colors.white,
                    child: Image.asset("assets/flutter.jpeg"),
                    onPressed: () => launch("https://flutter.dev/"),
                  ))),
                  ListTile(title: Text("Home", style: TextStyle(fontSize: 24))),
                  ListTile(
                      title:
                          Text("LeaderBoard", style: TextStyle(fontSize: 24))),
                  ListTile(title: Text("Help", style: TextStyle(fontSize: 24)), onTap:() => launch("https://flutter.dev/docs") ,),
                  ListTile(
                      title: Text("Settings", style: TextStyle(fontSize: 24)))
                ],
              ),
            ),
            appBar: AppBar(
              title: Center(child: Text("Flutter Quiz")),
            ),
            body: ListView(children: [
              Image.asset(
                "assets/flutter.jpeg",
                height: 300,
              ),
              SizedBox(height: 10),
              Center(child: MainApp())
            ])));
  }
}
