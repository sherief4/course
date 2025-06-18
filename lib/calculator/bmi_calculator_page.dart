import 'package:first_project/calculator_result/calculator_result_page.dart';
import 'package:flutter/material.dart';

import 'gender_widget.dart';

class BmiCalculatorPage extends StatefulWidget {
  const BmiCalculatorPage({super.key});

  @override
  State<BmiCalculatorPage> createState() => _BmiCalculatorPageState();
}

class _BmiCalculatorPageState extends State<BmiCalculatorPage> {
  String? selectedGender;
  double height = 60.0;

  int weight = 0;

  int age = 0;

  void selectGender(String gender) {
    setState(() {
      selectedGender = gender;
    });
  }

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
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          spacing: 20.0,
          children: [
            Row(
              spacing: 20,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      print("male");
                      selectGender("male");
                    },
                    child: GenderWidget(
                      icon: Icons.male,
                      gender: "MALE",
                      selected: selectedGender == "male",
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      print("female");
                      selectGender("female");
                    },
                    child: GenderWidget(
                      icon: Icons.female,
                      gender: "FEMALE",
                      selected: selectedGender == "female",
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Color(0xff252A48),
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Column(
                children: [
                  Text(
                    "HEIGHT",
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "${height.round()}",
                        style: TextStyle(
                          fontSize: 32.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "CM",
                        style: TextStyle(fontSize: 16.0, color: Colors.white),
                      ),
                    ],
                  ),
                  Slider(
                    value: height,
                    min: 60.0,
                    max: 220.0,
                    activeColor: Color(0xffE6015E),
                    onChanged: (double value) {
                      setState(() {
                        height = value;
                        print("Slider Value $value");
                      });
                    },
                  ),
                ],
              ),
            ),
            Row(
              spacing: 20.0,
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: Color(0xff252A48),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Column(
                      spacing: 12.0,
                      children: [
                        Text(
                          "WEIGHT",
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        ),
                        Text(
                          "$weight",
                          style: TextStyle(
                            fontSize: 32.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          spacing: 20.0,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              child: CircleAvatar(
                                radius: 24.0,
                                backgroundColor: Color(0XFF0D1232),
                                child: Icon(Icons.add, color: Colors.white),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  if (weight > 0) {
                                    weight--;
                                  }
                                });
                              },
                              child: CircleAvatar(
                                radius: 24.0,
                                backgroundColor: Color(0XFF0D1232),
                                child: Icon(Icons.remove, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: Color(0xff252A48),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Column(
                      spacing: 12.0,
                      children: [
                        Text(
                          "AGE",
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        ),
                        Text(
                          "$age",
                          style: TextStyle(
                            fontSize: 32.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          spacing: 20.0,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  age++;
                                });
                              },
                              child: CircleAvatar(
                                radius: 24.0,
                                backgroundColor: Color(0XFF0D1232),
                                child: Icon(Icons.add, color: Colors.white),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  if (age > 0) {
                                    age--;
                                  }
                                });
                              },
                              child: CircleAvatar(
                                radius: 24.0,
                                backgroundColor: Color(0XFF0D1232),
                                child: Icon(Icons.remove, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () {
                if (selectedGender != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return CalculatorResultPage(
                          gender: selectedGender!,
                          height: height,
                          weight: weight,
                          age: age,
                        );
                      },
                    ),
                  );
                }
              },
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(8.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffE6015E),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Text(
                  "Check your BMI",
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
