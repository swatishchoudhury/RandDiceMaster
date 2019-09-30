import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';

void main() {
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );

  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dicee'),
          backgroundColor: Colors.black,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int diceNumber1 = 2;
  int diceNumber2 = 2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Container(
            child: Expanded(
              child: FlatButton(
                child: Image.asset('images/dice$diceNumber1.png'),
                onPressed: () {
                  rand();
                },
              ),
            ),
          ),
          Container(
            child: Expanded(
              child: FlatButton(
                child: Image.asset('images/dice$diceNumber2.png'),
                onPressed: () {
                  rand();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }