import 'package:bmi_calculator/constants/constants.dart';
import 'package:flutter/material.dart';

import 'screens/screens.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      theme: ThemeData(
        appBarTheme: AppBarTheme().copyWith(
          backgroundColor: AppColors.kMainColor,
        ),
        scaffoldBackgroundColor: AppColors.kMainColor,
      ),
      home: HomeScreen(),
    );
  }
}
