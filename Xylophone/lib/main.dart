import 'package:flutter/material.dart';
//import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void getNote(int noteNumber){
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(            
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
            FlatButton(
          
              color: Colors.red,
              onPressed: (){
                getNote(1);
            },
            child:null
            ),
            FlatButton(
              color: Colors.orange,
              onPressed: (){
                 getNote(2);
            },
            child:null
            ),
            FlatButton(
              color: Colors.yellow,
              onPressed: (){
                 getNote(3);
            },
            child:null
            ),
            FlatButton(
              color: Colors.green,
              onPressed: (){
                 getNote(4);
            },
            child:null
            ),
            FlatButton(
              color: Colors.blue,
              onPressed: (){
                 getNote(5);
            },
            child:null
            ),
            FlatButton(
              color: Colors.indigo,
              onPressed: (){
                 getNote(6);
            },
            child:null
            ),
            FlatButton(
              color: Colors.purple,
              onPressed: (){
                 getNote(7);
            },
            child:null
            ),
            ],
          ),
        ),
      ),
    );
  }
}
