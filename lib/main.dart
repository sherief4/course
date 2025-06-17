import 'package:flutter/material.dart';

import 'calculator/bmi_calculator_page.dart';



void main() {
  runApp(MyApp());
}

/// Everything in flutter is a widget
/// Application itself is a widget
/// Home Page
///  Login Page
///  Profile Page
///  Scaffold Widget
///  Safe Area Widget
///  Column /// top start left
///  cross axis alignment

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
    home: BmiCalculatorPage(),
    );
  }
}
