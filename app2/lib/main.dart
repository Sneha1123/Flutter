import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}
 class MyAppState extends State<MyApp>{ //<>tells tht this state belongs to the MyApp 
  var questionIndex=0;
  void answerQuestion(){
    print(questionIndex);
    print('answer chosen');
    setState(() { // tells when to re render or chnge the state
      questionIndex ++ ;
    });
    
    print(questionIndex);
  }
  @override
  Widget build(BuildContext context) {
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
            Text(questions[questionIndex]), // same as questions.elementAt(index)
            RaisedButton(child: Text('Answer 1'), onPressed: answerQuestion),// named function as have name
            RaisedButton(child: Text('Answer 2'), onPressed: answerQuestion),
            RaisedButton(child: Text('Answer 3'), onPressed: ()=>print('Answer 3 chosen')),//anonymous function as no name
            RaisedButton(child: Text('Answer 4'), onPressed: (){
              //write something
              print('answer 4 chosen');
            }),
          ],
        ),
      ),
    );
  }
}
