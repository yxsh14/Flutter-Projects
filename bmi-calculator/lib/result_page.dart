import 'package:flutter/material.dart';
import 'constants.dart';
import 'body_card.dart';
import 'bottombutton.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.bminumber,
      @required this.bmiresult,
      @required this.bmitip});
  final String bminumber;
  final String bmiresult;
  final String bmitip;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Result"), centerTitle: true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Text('YOUR RESULT', style: ktitletextstyle),
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
            ),
          ),
          Expanded(
            flex: 5,
            child: body_card(
              colour: kactiveCardColour,
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    bmiresult.toUpperCase(),
                    style: kresulttextstyle,
                  ),
                  Text(bminumber, style: kresultNumStyle),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      bmitip,
                      style: kresulttipstyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              buttontitle: 'RE-CALCULATE',
              ontap: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
