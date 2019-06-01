import 'package:flutter/material.dart';
import './questions.dart';
import './results.dart';

class Quiz extends StatefulWidget {
  final String mode;
  Quiz(this.mode);
  @override
  State<StatefulWidget> createState() {
    return new QuizState(this.mode);
  }
}

class QuizState extends State<Quiz> {
  final String mode;
  ListQuestion _db = new ListQuestion();
  List<Question> questionlist;
  Question currentQuestion;
  int index = 0;
  int score = 0;

  QuizState(this.mode) {
    _db.addQuestion("1+1= ?", "2", ["2", "3", "0", "1"], "Easy");
    _db.addQuestion("1+2= ?", "3", ["3", "3", "0", "1"], "Easy");
    _db.addQuestion("1+3= ?", "4", ["4", "3", "0", "1"], "Easy");
    _db.addQuestion("1+4= ?", "5", ["5", "3", "0", "1"], "Easy");
    _db.addQuestion("1+5= ?", "6", ["6", "3", "0", "1"], "Easy");
    _db.addQuestion("1+6= ?", "7", ["7", "3", "0", "1"], "Easy");
    _db.addQuestion("1+7= ?", "8", ["8", "3", "0", "1"], "Easy");
    _db.addQuestion("1+1= ?", "2", ["2", "3", "0", "1"], "Medium");
    _db.addQuestion("1+2= ?", "3", ["3", "3", "0", "1"], "Medium");
    _db.addQuestion("1+3= ?", "4", ["4", "3", "0", "1"], "Medium");
    _db.addQuestion("1+4= ?", "5", ["5", "3", "0", "1"], "Medium");
    _db.addQuestion("1+5= ?", "6", ["6", "3", "0", "1"], "Medium");
    _db.addQuestion("1+6= ?", "7", ["7", "3", "0", "1"], "Medium");
    _db.addQuestion("1+7= ?", "8", ["8", "3", "0", "1"], "Medium");
    _db.addQuestion("1+1= ?", "2", ["2", "3", "0", "1"], "Hard");
    _db.addQuestion("1+2= ?", "3", ["3", "3", "0", "1"], "Hard");
    _db.addQuestion("1+3= ?", "4", ["4", "3", "0", "1"], "Hard");
    _db.addQuestion("1+4= ?", "5", ["5", "3", "0", "1"], "Hard");
    _db.addQuestion("1+5= ?", "6", ["6", "3", "0", "1"], "Hard");
    _db.addQuestion("1+6= ?", "7", ["7", "3", "0", "1"], "Hard");
    _db.addQuestion("1+7= ?", "8", ["8", "3", "0", "1"], "Hard");
    questionlist = _db.getListQuestions(this.mode);
    currentQuestion = questionlist[0];
  }
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Score : $score/5"),
            ),
            body: Center ( child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    currentQuestion.theQuestion,
                    style: TextStyle(fontSize: 48),
                  ),
                  SizedBox(height: 30),
                  Column(

                    children: currentQuestion
                        .getTheList()
                        .map(
                          (element) => Card(
                                  child: Container(
                                margin: EdgeInsets.all(5.0),
                                child: Column(
                                  children: <Widget>[
                                    ButtonTheme(
                                        minWidth: 250.0,
                                        height: 75.0,
                                        
                                        child: RaisedButton(
                                          color:  Colors.teal[200],
                                          
                                            onPressed: () {
                                              if (index == 4) {
                                                bool isCorrect = currentQuestion
                                                    .isCorrect(element);
                                                if (isCorrect) {
                                                  score++;
                                                }
                                                Navigator.pop(context);
                                                return Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Result(
                                                                this.score)));
                                              }
                                              setState(() {
                                                bool isCorrect = currentQuestion
                                                    .isCorrect(element);
                                                if (isCorrect) {
                                                  score++;
                                                }
                                                index++;
                                                currentQuestion =
                                                    questionlist[index];
                                              });
                                            },
                                            child: Text(element,style: TextStyle(fontSize: 30),)))
                                  ],
                                ),
                              )),
                        )
                        .toList(),
                  ),SizedBox(height: 20),
                  RaisedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("This Quiz is too Hard Get me Out"))
                ]))));
  }
}
