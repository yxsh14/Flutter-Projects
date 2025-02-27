import 'package:flutter/material.dart';
import 'constants.dart';

class genderBox extends StatelessWidget {
  genderBox({@required this.icon, @required this.text});
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          text,
          style: ktextlabelstyle,
        )
      ],
    );
  }
}
