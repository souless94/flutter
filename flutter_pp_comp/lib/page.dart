import 'package:flutter/material.dart';
import './quiz.dart';

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          ButtonTheme(
              minWidth: 250.0,
              height: 75.0,
              child: RaisedButton(
                color: Colors.green[300],
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Quiz("Easy")));
                  },
                  child: Text("Easy",style: TextStyle(fontSize: 25),))),
                  SizedBox(height: 10),
          ButtonTheme(
              minWidth: 250.0,
              height: 75.0,
              child: RaisedButton(
                color: Colors.orange[300],
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Quiz("Medium")));
                  },
                  child: Text("Medium",style: TextStyle(fontSize: 25),))),
                  SizedBox(height: 10),
          ButtonTheme(
              minWidth: 250.0,
              height: 75.0,
              child: RaisedButton(
                color: Colors.red[400],
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Quiz("Hard")));
                  },
                  child: Text("Hard",style: TextStyle(fontSize: 25),))),
        ]);
  }
}
