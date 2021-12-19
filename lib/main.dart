import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dicee'),
          backgroundColor: Colors.red,
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
  int x = 5,y=4;
  void dod(){
    setState(() {
      x = 1 + Random().nextInt(6);

      y = 1 + Random().nextInt(6);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                dod();
                print(x);
              },
              child: Image.asset('images/dice$x.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                dod();
              },
              child: Image.asset('images/dice$y.png'),
            ),
          ),
        ],
      ),
    );
  }
}

