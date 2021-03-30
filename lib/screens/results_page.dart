import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_bmi/constants.dart';

import 'file:///C:/Users/billn/AndroidStudioProjects/MyBMI/my_bmi/lib/components/reusable_card.dart';

class ResultsPage extends StatelessWidget {
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
            child: Text(
              'Your Result',
              style: kTitleTextStyle,
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 0.0,
              ),
              padding: EdgeInsets.all(0.0),
              child: ReusableCard(
                colour: kActiveCardColor,
                cardWild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Normal',
                      style: kResultTextStyle,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '20.0',
                      style: kBMITextStyle,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Your BMI is quite low, you should eat more!',
                      style: kAdviceMessageTextStyle,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
