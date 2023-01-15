import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});
  final int height;
  final int weight;

  double? _bmi;

  // Function we make to calculate
  String calculator() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi! >= 25 && _bmi! < 29.9) {
      return 'Overweight 😰';
    } else if (_bmi! >= 18.5 && _bmi! <= 24.9) {
      return ' Normal 👍';
    } else if (_bmi! < 18.5) {
      return 'Underweight 😎';
    } else {
      return 'Obesity🥵';
    }
  }

  String getInterpition() {
    if (_bmi! >= 25 && _bmi! < 29.9) {
      return 'you have a higher the normal body , try to excessive more';
    } else if (_bmi! >= 18.5 && _bmi! <= 24.9) {
      return 'you have a normal weight body , Good job!';
    } else if (_bmi! < 18.5) {
      return 'you have a lower the normal body , you can eat bit more';
    } else {
      return 'you have a Obesity the normal body , stop more eating and try to excessive more';
    }
  }
}
