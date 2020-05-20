import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            backgroundColor: Colors.blueAccent,
            title: Center(
              child: Text('Ask Me Anything'),
              ),
          ),
          body:Decider(),
        ),
      ),
    );

    class Decider extends StatefulWidget {
      @override
      _DeciderState createState() => _DeciderState();
    }
    
    class _DeciderState extends State<Decider> {
      int picNumber=1;
      @override
      Widget build(BuildContext context) {
        return Center(
          child: Container(
            child: FlatButton(child: Image.asset('images/ball$picNumber.png'),
            onPressed: (){
              setState(() {
                picNumber= Random().nextInt(5)+1;
              });
            },
            ),
          ),
        );
      }
    }
