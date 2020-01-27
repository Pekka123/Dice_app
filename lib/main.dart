import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int diceFirstNum=1;
  int diceSecondNum=1;

  void getNewDice(){
    setState(() {
      diceFirstNum=Random().nextInt(6)+1;
      diceSecondNum=Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.red,
      ),
      home:Scaffold(
        body: SafeArea(
          child:Center(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: FlatButton(
                        child: Image.asset("images/dice$diceFirstNum.png"),
                      onPressed: (){
                          getNewDice();
                      },
                    ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Expanded(
                    child: FlatButton(
                        child: Image.asset("images/dice$diceSecondNum.png"),
                      onPressed: (){
                          getNewDice();
                      },
                    ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
