import 'package:flutter/material.dart';

class body_card extends StatelessWidget {
  body_card({@required this.colour, this.childCard, this.onpress});
  final Color colour;
  final Widget childCard;
  final Function onpress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: childCard,
      ),
    );
  }
}
