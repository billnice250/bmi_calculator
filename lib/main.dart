import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: bottomContainerColor,
    ));
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        //Color(0xFF0A0E21)
        primaryColor: appPrimaryColor,
        scaffoldBackgroundColor: appPrimaryColor,
      ),
      home: InputPage(),
    );
  }
}
