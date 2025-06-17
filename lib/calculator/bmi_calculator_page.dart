import 'package:flutter/material.dart';

import 'gender_choice_widget.dart';

class BmiCalculatorPage extends StatelessWidget {
  const BmiCalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF0D1232),
      appBar: AppBar(
        backgroundColor: Color(0XFF0D1232),
        title: Text(
          "BMI Calculator".toUpperCase(),
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [Icon(Icons.refresh, color: Colors.white)],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            GenderChoiceWidget(),
          ],
        ),
      ),
    );
  }
}
