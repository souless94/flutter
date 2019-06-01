import 'package:flutter/material.dart';
import './page.dart';

void main() => runApp(MyApp());

// main app code here
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        home: Scaffold(
            appBar: AppBar(
              title: Center(child:Text("Flutter Quiz")),
            ),
            body: ListView(children: [
              Image.asset("assets/flutter.jpeg",height: 300,),
              SizedBox(height: 10),
              Center(child: MainApp())
            ])));
  }
}
