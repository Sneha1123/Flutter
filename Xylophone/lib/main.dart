import 'package:flutter/material.dart';
//import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void getNote(int noteNumber){
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }
  Expanded createKeys({Color color, int noteNumber}){
   return Expanded(
              child: FlatButton(
                color: color,
                onPressed: (){
                   getNote(noteNumber);
              },
              child:null
              ),
            );
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(  
                      
            crossAxisAlignment: CrossAxisAlignment.stretch,
           // mainAxisSize: MainAxisSize.max,
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
            createKeys(color:Colors.red, noteNumber: 1),
            createKeys(color:Colors.orange, noteNumber: 2),
            createKeys(color:Colors.yellow, noteNumber: 3),
            createKeys(color:Colors.green, noteNumber: 4),
            createKeys(color:Colors.blue, noteNumber: 5),
            createKeys(color:Colors.indigo, noteNumber: 6),
            createKeys(color:Colors.purple, noteNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
