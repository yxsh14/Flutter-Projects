import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(Xylo());

class Xylo extends StatefulWidget {
  const Xylo({Key key}) : super(key: key);

  @override
  State<Xylo> createState() => _XyloState();
}

class _XyloState extends State<Xylo> {
  @override
  Widget build(BuildContext context) {
    void audiplay(int num) {
      final player = AudioPlayer();
      player.play(
        AssetSource('note$num.wav'),
      );
    }

    Widget buildkey(int n, var color) {
      return Expanded(
        child: TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.all(16.0),
            foregroundColor: Colors.white,
            backgroundColor: color,
          ),
          onPressed: () {
            audiplay(n);
          },
          child: SizedBox(),
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(1, Colors.red),
              buildkey(2, Colors.orange),
              buildkey(3, Colors.yellow),
              buildkey(4, Colors.green),
              buildkey(5, Colors.blue),
              buildkey(6, Colors.indigo),
              buildkey(7, Color.fromRGBO(238, 130, 238, 1)),
            ],
          ),
        ),
      ),
    );
  }
}
