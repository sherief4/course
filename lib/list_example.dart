import 'package:first_project/student.dart';
import 'package:flutter/material.dart';

List<Student> students = [
  Student(
    name: "Ali",
    age: 19,
    favouriteColor: Colors.red,
    schoolName: "Future School",
  ),
  Student(
    name: "Mohammed",
    age: 16,
    favouriteColor: Colors.teal,
    schoolName: "Eagles School",
  ),
  Student(
    name: "Hussein",
    age: 16,
    favouriteColor: Colors.green,
    schoolName: "Eagles School",
  ),
  Student(
    name: "Mohammed",
    age: 16,
    favouriteColor: Colors.teal,
    schoolName: "Eagles School",
  ),
  Student(
    name: "Ahmed",
    age: 16,
    favouriteColor: Colors.blue,
    schoolName: "Eagles School",
  ),
  Student(
    name: "Hussein",
    age: 16,
    favouriteColor: Colors.red,
    schoolName: "Eagles School",
  ),
  Student(
    name: "Youssef",
    age: 19,
    favouriteColor: Colors.deepPurple,
    schoolName: "Future School",
  ),
];

Widget studentText(String text) {
  return Text(text, style: TextStyle(color: Colors.white, fontSize: 20.0));
}

class ListExample extends StatelessWidget {
  const ListExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List View Example")),
      body: ListView.separated(
        physics: BouncingScrollPhysics(),
        itemCount: students.length,
        itemBuilder: (context, index) {
          /// 0 1 2 3 4 5
          final Student currentStudent = students[index];
          return Container(
            padding: EdgeInsets.all(12.0),
            width: double.infinity,

            color: currentStudent.favouriteColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                studentText(currentStudent.name),
                studentText("Student Age : ${currentStudent.age}"),
                studentText("School Name : ${currentStudent.schoolName}"),

              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(height: 16.0);
        },
      ),
    );
  }
}
