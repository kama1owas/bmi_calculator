import 'package:bmi_calculator/pages/home_page.dart';
import 'package:bmi_calculator/pages/result_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeHage(),
      // home: ResultPage(),
    );
  }
}
