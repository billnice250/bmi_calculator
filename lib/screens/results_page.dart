import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_bmi/calculator_brain.dart';
import 'package:my_bmi/components/bottom_button.dart';
import 'package:my_bmi/constants.dart';

import 'file:///C:/Users/billn/AndroidStudioProjects/MyBMI/my_bmi/lib/components/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  final CalculatorBrain result;

  const ResultsPage({@required this.result});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: kAppPrimaryColor,
    ));
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomCenter,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 0.0,
              ),
              padding: EdgeInsets.all(10.0),
              child: ReusableCard(
                colour: kActiveCardColor,
                cardWild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      result.getResult(),
                      style: kResultTextStyle,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      result.calculateBMI(),
                      style: kBMITextStyle,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      result.getInterpretation(),
                      style: kAdviceMessageTextStyle,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonTitle: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
