import 'package:flutter/material.dart';

// void main(){
//   runApp(MyApp());

// }

void main() => runApp(MyApp()); //for only one line of code

class MyApp extends StatelessWidget{
  @ override
  Widget build(BuildContext context){
    return MaterialApp(home:Text('Hello there!'));
  }

}