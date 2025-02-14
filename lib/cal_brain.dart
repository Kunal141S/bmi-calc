import 'dart:math';

class CalBrain {
  CalBrain({required this.height, required this.weight});
  final int height;
  final int weight;

  late double _bmi;
  String calculateBmi()
  {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String getResult()
  {
    if(_bmi >= 25 )
      {
          return 'Overweight';
      }
    else if(_bmi > 18.5)
      {
          return 'Normal';
      }
    else
      {
        return 'Underweight';
      }
  }
}
