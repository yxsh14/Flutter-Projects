import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo[400],
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.indigo[500],
          title: Text(
            "8 Ball Game ",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: BallMethod(),
      ),
    ),
  );
}

class BallMethod extends StatefulWidget {
  const BallMethod({Key key}) : super(key: key);

  @override
  State<BallMethod> createState() => _BallMethodState();
}

class _BallMethodState extends State<BallMethod> {
  int imgNo = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 400.0,
        child: TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            padding: EdgeInsets.all(16.0),
            textStyle: TextStyle(fontSize: 20),
          ),
          child: Image.asset('images/ball$imgNo.png'),
          onPressed: () {
            setState(() {
              imgNo = Random().nextInt(5) + 1;
            });
          },
        ),
      ),
    );
  }
}
