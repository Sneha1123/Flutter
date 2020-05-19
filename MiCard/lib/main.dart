import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      body: SafeArea(
              child: Container(
          color: Colors.white,
          child: Text('Hello'),
          height: 100.0,
          width: 100.0,
          margin: EdgeInsets.all(10.0),
          padding: EdgeInsets.all(10.0),
        ),
      ),
      backgroundColor: Colors.blue,
    ),
  );
  }
}
