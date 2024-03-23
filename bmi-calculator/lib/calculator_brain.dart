import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final int weight;
  final int height;
  double _bmi;
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String bmiresult() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String bmitip() {
    if (_bmi >= 25) {
      return 'Your BMI is greater than normal, you should exercise more.';
    } else if (_bmi >= 18.5) {
      return 'Your BMI is normal, try to maintain that. Good Job!';
    } else {
      return 'Your BMI is low, you should eat more.';
    }
  }
}
