import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_bmi/reusable_card.dart';

import 'icon_content.dart';

enum Gender { MALE, FEMALE }

const bottomContainerHeight = 65.0;
const Color activeCardColor = Color(0x6F1D1E33);
const Color inactiveCardColor = Color(0x2F1D1E33);

const Color bottomContainerColor = Colors.indigo;
const Color appPrimaryColor = Color(0xFF0D1117);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.MALE;
                      });
                    },
                    child: ReusableCard(
                      colour: selectedGender == Gender.MALE
                          ? activeCardColor
                          : inactiveCardColor,
                      cardWild: IconContent(
                        iconData: FontAwesomeIcons.mars,
                        text: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.FEMALE;
                      });
                    },
                    child: ReusableCard(
                      colour: selectedGender == Gender.FEMALE
                          ? activeCardColor
                          : inactiveCardColor,
                      cardWild: IconContent(
                        iconData: FontAwesomeIcons.venus,
                        text: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: inactiveCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: inactiveCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: inactiveCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Center(
              child: Text('CALCULATE',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  )),
            ),
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
