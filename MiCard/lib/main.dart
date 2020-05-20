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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 60.0,
                //backgroundColor: Colors.white,
                backgroundImage: AssetImage('images/papa1.jpg'),
              ),
              Text('A.K Choudhary',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Pacifico',
                ),
                
              ),
              Text('BLUE DART AVIATION',
                style: TextStyle(
                  fontSize: 27.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white54,
                  fontFamily: 'BebasNeue',
                ),
              ),
              SizedBox(
                height: 5.0,
                
              ),
              Container(
                width: 200.0,
                              child: Divider(
                  color: Colors.white60,
                  thickness: 2.0,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
                Container(
                  
                  color: Colors.white,
                  height: 35.0,
                 // width: 300.0,
                  margin: EdgeInsets.symmetric(horizontal: 40.0),
                   padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.call,
                      size: 25.0,
                      color: Colors.teal[900],
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text('9748276713',
                      style: TextStyle(
                        fontSize: 23.0,
                        fontWeight: FontWeight.bold,
                        
                      ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  color: Colors.white,
                  height: 35.0,
                  //width: 300.0,
                  margin: EdgeInsets.symmetric(horizontal: 40.0),
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.mail,
                      size: 25.0,
                      color: Colors.teal[900],
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text('choudharya@yahoo.com',
                      style: TextStyle(
                        fontSize: 23.0,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      
                    ],
                  ),
                )
              

            ],
          ),
        ),
        backgroundColor: Colors.teal,
      ),
    );
  }
}
