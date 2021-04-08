import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain {
  final int height;
  final int weight;
  double _bmi;

  CalculatorBrain({@required this.height, @required this.weight}) {
    this._bmi = weight / pow(height / 100, 2);
  }
  String calculateBMI() {
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi != null) {
      if (_bmi >= 25) {
        return 'Overweight';
      } else if (_bmi > 18.5) {
        return 'Normal';
      } else {
        return 'Underweight';
      }
    } else {
      return 'BMI not yet calculated';
    }
  }

  String getInterpretation() {
    if (_bmi != null) {
      if (_bmi >= 25) {
        return 'You have a higher than normal body weight. Try to exercise more and eat less.';
      } else if (_bmi > 18.5) {
        return 'You have a normal body weight, Good job!';
      } else {
        return 'You have a lower than normal  body weight. You can eat bit more.';
      }
    } else {
      return 'Internal error, BMI calculation failed! restart the app and try again';
    }
  }
}
