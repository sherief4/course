import 'package:flutter/material.dart';

class CalculatorResultPage extends StatelessWidget {
  const CalculatorResultPage({
    super.key,
    required this.gender,
    required this.height,
    required this.weight,
    required this.age,
  });

  final String gender;
  final double height;
  final int weight;
  final int age;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF0D1232),
      appBar: AppBar(
        backgroundColor: Color(0XFF0D1232),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.keyboard_arrow_left, color: Colors.white),
        ),
        title: Text(
          "Your BMI Result",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: double.infinity),
          Text(
            "Gender is : ${gender.toUpperCase()}",
            style: TextStyle(color: Colors.white, fontSize: 24.0),
          ),
          Text(
            "Height is : ${height.round()} CM",
            style: TextStyle(color: Colors.white, fontSize: 24.0),
          ),
          Text(
            "Weight is : $weight",
            style: TextStyle(color: Colors.white, fontSize: 24.0),
          ),
          Text(
            "Age is : $age",
            style: TextStyle(color: Colors.white, fontSize: 24.0),
          ),

          // BMI = weight (kg) / [height (m)]²
          Text(
            "Your BMI Result is ${(weight / ((height / 100) * (height / 100))).toStringAsFixed(2)}",
textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 24.0),
          ),
        ],
      ),
    );
  }
}
