import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_bmi/reusable_card.dart';

import 'icon_content.dart';

const bottomContainerHeight = 65.0;
const Color reusableCardColor = Color(0x3F1D1E33);
const Color bottomContainerColor = Colors.indigo;
const Color appPrimaryColor = Color(0xFF0D1117);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  child: ReusableCard(
                    colour: reusableCardColor,
                    cardWild: IconContent(
                      iconData: FontAwesomeIcons.mars,
                      text: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: reusableCardColor,
                    cardWild: IconContent(
                      iconData: FontAwesomeIcons.venus,
                      text: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: reusableCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: reusableCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: reusableCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.indigo,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
