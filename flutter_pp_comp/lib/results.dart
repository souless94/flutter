import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  Result(this.score);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Flutter Quiz"),
            ),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                  Text("Congrats you got $score/5 "),
                  RaisedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Back to HomePage"))
                ]))));
  }
}
