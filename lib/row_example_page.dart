import 'package:flutter/material.dart';

class RowExamplePage extends StatelessWidget {
  const RowExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    /// Main axis in row is Horizontal
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Row Example Page"),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  color: Colors.red,
                  child: Text("First Text", style: TextStyle(fontSize: 30.0)),
                ),
                Container(color: Colors.yellow, child: Text("Second Text", style: TextStyle(fontSize: 30.0))),
                Container(color: Colors.green, child: Text("Third Text", style: TextStyle(fontSize: 30.0))),
                Container(color: Colors.green, child: Text("Third Text", style: TextStyle(fontSize: 30.0))),
                Container(color: Colors.green, child: Text("Third Text", style: TextStyle(fontSize: 30.0))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
