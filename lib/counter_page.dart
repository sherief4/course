import 'package:flutter/material.dart';
class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int count = 0 ;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Flutter Demo Home Page",
          style: TextStyle(color: Colors.orangeAccent),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count += 1;
          });
        },
        backgroundColor: Colors.blue,
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 8.0,
          children: [
            SizedBox(width: double.infinity),
            Text(
              "You have pushed the button this many times",
              style: TextStyle(fontSize: 16.0),
            ),
            Text(
              "$count",
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
