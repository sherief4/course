import 'package:flutter/material.dart';

import 'gender_widget.dart';

class GenderChoiceWidget extends StatefulWidget {
  const GenderChoiceWidget({super.key});

  /// Reusable Widgets

  @override
  State<GenderChoiceWidget> createState() => _GenderChoiceWidgetState();
}

class _GenderChoiceWidgetState extends State<GenderChoiceWidget> {
  String? selectedGender;

  void selectGender(String gender) {
    setState(() {
      selectedGender = gender;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
