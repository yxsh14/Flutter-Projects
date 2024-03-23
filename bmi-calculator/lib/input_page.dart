// ignore_for_file: camel_case_types

import 'result_page.dart';
import 'constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'body_card.dart';
import 'gender_box.dart';
import 'bottombutton.dart';
import 'round_icon_button.dart';
import 'calculator_brain.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = kinactiveCardColour;
  Color femaleCardColor = kinactiveCardColour;
  Gender selectedGender;
  int height = 180;
  int weight = 60;
  int age = 21;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: body_card(
                    onpress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? kactiveCardColour
                        : kinactiveCardColour,
                    childCard: genderBox(
                      icon: FontAwesomeIcons.mars,
                      text: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: body_card(
                    onpress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? kactiveCardColour
                        : kinactiveCardColour,
                    childCard: genderBox(
                      icon: FontAwesomeIcons.venus,
                      text: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: body_card(
              colour: kactiveCardColour,
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: ktextlabelstyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Text(height.toString(), style: knumberLargestyle),
                      Text(
                        'cm',
                        style: ktextlabelstyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: ksliderthemedata,
                    child: Slider(
                        value: height.toDouble(),
                        min: 120,
                        max: 220,
                        onChanged: (newvalue) {
                          setState(() {
                            height = newvalue.floor();
                          });
                        }),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: body_card(
                    colour: kactiveCardColour,
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: ktextlabelstyle,
                        ),
                        Text(
                          weight.toString(),
                          style: knumberLargestyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              pressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              chill: FontAwesomeIcons.minus,
                            ),
                            SizedBox(
                              width: 45,
                            ),
                            RoundIconButton(
                              pressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              chill: FontAwesomeIcons.plus,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: body_card(
                    colour: kactiveCardColour,
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: ktextlabelstyle,
                        ),
                        Text(
                          age.toString(),
                          style: knumberLargestyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              pressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              chill: FontAwesomeIcons.minus,
                            ),
                            SizedBox(
                              width: 45,
                            ),
                            RoundIconButton(
                              pressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              chill: FontAwesomeIcons.plus,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            buttontitle: 'CALCULATE',
            ontap: () {
              CalculatorBrain cal =
                  CalculatorBrain(height: height, weight: weight);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return ResultPage(
                    bminumber: cal.calculateBMI(),
                    bmiresult: cal.bmiresult(),
                    bmitip: cal.bmitip(),
                  );
                }),
              );
            },
          ),
        ],
      ),
    );
  }
}
