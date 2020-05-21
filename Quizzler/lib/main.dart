import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text('Answer These!!'),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0
            ),
            child: QuizApp()),
        ),
      ),
    );
  }
}

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  List <Icon> scoreKeeper=[];
  List <String> questions=[
    'You only use 10% of your brain', //false
    'The Royal Family aren\'t allowed to play Monopoly', //false
    'In your lifetime, you\'ll produce enough saliva to fill two swimming pools.', //true
    'A child could swim through the veins of a blue whale', //true
    'It\'s possible to hear a lion\'s roar from 5 miles away', //true
    'Lightning never strikes the same place more than once', //false
    'The youngest person to climb Everest was 10 years old',//false
    'It\'s illegal to kill a fly in the Houses of Parliament',//false
    'In South Korea, you can only be a masseuse if you\'re blind or partially sighted', //true
    'Buzz Aldrin was the first person to urinate on moon' //true
  ];
  int questionIndex=0;

  //function to get the buttons
  Expanded getButton({String value, Color color}){
    return Expanded(
      flex: 2,
          child: FlatButton(
            color: color,
            onPressed: () {
              setState(() {
                questionIndex = questionIndex + 1;
              });
              
            },
            child: Text(value),
          ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          flex: 12,
                  child: Center(
                    child: Text(
                      questions[questionIndex],
                      textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30.0,
            //backgroundColor: Colors.lightBlue,
            color: Colors.white,

          ),
          ),
                  ),
        ),
        getButton(value:'True', color: Colors.green),
        SizedBox(
          height: 15.0,
        ),
        getButton(value:'False', color: Colors.red),
        Expanded(
          
                  child: Row(
            children: <Widget>[

            ],
          ),
        ),
      ],
    );
  }
}
