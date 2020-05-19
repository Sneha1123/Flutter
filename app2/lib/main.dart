import 'package:app2/question.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  //<>tells tht this state belongs to the MyApp , add leading _ to tell dart that the file shuld not be accessed from outside rathr it should be accessed from inside this file only ie turns a public into a private class.
  var _questionIndex = 0;
  void _answerQuestion() {
    print('inside answer question method');
    print(_questionIndex);
    print('answer chosen');
    setState(() {
      // tells when to re render or chnge the state
      _questionIndex++;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    print('before creation of question list');
    var questions = [
      '1. What\'s your favourite color?',
      'What\'s your fav animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Second App'),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[
                _questionIndex]), // same as questions.elementAt(index)
            RaisedButton(
                child: Text('Answer 1'),
                onPressed: _answerQuestion), // named function as have name
            RaisedButton(child: Text('Answer 2'), onPressed: _answerQuestion),
            RaisedButton(
                child: Text('Answer 3'),
                onPressed: () =>
                    print('Answer 3 chosen')), //anonymous function as no name
            RaisedButton(
                child: Text('Answer 4'),
                onPressed: () {
                  //write something
                  print('answer 4 chosen');
                }),
          ],
        ),
      ),
    );
  }
}
