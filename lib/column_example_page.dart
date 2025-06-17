import 'package:flutter/material.dart';

class ColumnExamplePage extends StatelessWidget {
  const ColumnExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Vertical Arrange
    /// main axis vertical axis
    /// cross axis is horizontal axis

    return Scaffold(
      appBar: AppBar(title: Text("Column Example Page")),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  color: Colors.red,
                  width: double.infinity,
                  child: Text(
                    "First Container",
                    style: TextStyle(fontSize: 30.0, color: Colors.white),
                  ),
                ),
                Container(
                  height: 100,
            
                  color: Colors.yellow,
                  width: double.infinity,
                  child: Text(
                    "Second Container",
                    style: TextStyle(fontSize: 30.0, color: Colors.white),
                  ),
                ),
                Container(
                  height: 100,
                  color: Colors.blue,
                  width: double.infinity,
                  child: Text(
                    "Third Container",
                    style: TextStyle(fontSize: 30.0, color: Colors.white),
                  ),
                ),
                Container(
                  height: 100,
                  color: Colors.blue,
                  width: double.infinity,
                  child: Text(
                    "Third Container",
                    style: TextStyle(fontSize: 30.0, color: Colors.white),
                  ),
                ),
                Container(
                  height: 100,
                  color: Colors.blue,
                  width: double.infinity,
                  child: Text(
                    "Third Container",
                    style: TextStyle(fontSize: 30.0, color: Colors.white),
                  ),
                ),
                Container(
                  height: 100,
                  color: Colors.blue,
                  width: double.infinity,
                  child: Text(
                    "Third Container",
                    style: TextStyle(fontSize: 30.0, color: Colors.white),
                  ),
                ),
                Container(
                  height: 100,
            
                  color: Colors.yellow,
                  width: double.infinity,
                  child: Text(
                    "Second Container",
                    style: TextStyle(fontSize: 30.0, color: Colors.white),
                  ),
                ),
                Container(
                  height: 100,
            
                  color: Colors.yellow,
                  width: double.infinity,
                  child: Text(
                    "Second Container",
                    style: TextStyle(fontSize: 30.0, color: Colors.white),
                  ),
                ),
                Container(
                  height: 100,
            
                  color: Colors.yellow,
                  width: double.infinity,
                  child: Text(
                    "Second Container",
                    style: TextStyle(fontSize: 30.0, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
