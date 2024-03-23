import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('GAREEBI'),
            backgroundColor: Color.fromARGB(255, 40, 13, 86),
          ),
          backgroundColor: Color.fromARGB(255, 90, 31, 192),
          body: const Center(
            child: Image(
              image: AssetImage('Images/maa.jpg'),
            ),
          ))));
}
