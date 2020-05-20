import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: 
            Text('Dice'),
          ),
          backgroundColor: Colors.red,
        ),
        body: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftDiceValue=1;
  int rightDiceValue=1;
  void changeDiceFace(){
    setState(() {
    leftDiceValue=Random().nextInt(6)+1;
     rightDiceValue=Random().nextInt(6)+1;
     },
       );
  }
  @override
  Widget build(BuildContext context) {
    
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: 
            FlatButton(
              child:
               Image.asset('images/dice$leftDiceValue.png'),
               onPressed: (){
                 //print('Left Button Pressed');
                changeDiceFace();
                 
               },
            ),
            ),
            Expanded(
            child: 
            FlatButton(
              child: Image.asset('images/dice$rightDiceValue.png'),
              onPressed: (){
                //print('Right Button pressed');
                 
                    changeDiceFace();
                  
                },
              ),
            ),
        ],
      ),
    );
  }
}

