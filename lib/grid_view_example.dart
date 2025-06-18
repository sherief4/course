import 'package:first_project/list_example.dart';
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

class GridViewExample extends StatelessWidget {
  const GridViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid View Example")),
      body: GridView.builder(
        padding: EdgeInsets.all(16.0),
        physics: BouncingScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16.0,
          crossAxisSpacing: 16.0,
          childAspectRatio: 9/10 , 
        ),
        itemBuilder: (context, index) {
          final Student currentStudent = students[index];
          return Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: currentStudent.favouriteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
              children: [
                studentText(currentStudent.name),
                studentText(currentStudent.age.toString()),
                studentText(currentStudent.schoolName),
              ],
            ),
          );
        },
        itemCount: students.length,
      ),
    );
  }
}
