import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: kCalculateButtonColor,
    ));
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        //Color(0xFF0A0E21)
        primaryColor: kAppPrimaryColor,
        scaffoldBackgroundColor: kAppPrimaryColor,
      ),
      home: InputPage(),
    );
  }
}
