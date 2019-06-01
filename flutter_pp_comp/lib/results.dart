import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  Result(this.score);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Flutter Quiz"),
            ),
            body: Stack(children: [
              Center(
                  child: new Image.asset("assets/congrats.jpeg",
                      width: size.width,
                      height: size.height,
                      fit: BoxFit.fill)),
              Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                    Text(
                      "You got \n    $score/5 \n",
                      style: TextStyle(fontSize: 48),
                    ),
                    ButtonTheme(
                        minWidth: 250.0,
                        height: 75.0,
                        child: RaisedButton(
                          color: Colors.lime,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("Back to HomePage",style: TextStyle(fontSize: 30),)))
                  ]))
            ])));
  }
}
