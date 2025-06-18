import 'package:first_project/counter_cubit/counter_cubit.dart';
import 'package:first_project/counter_cubit/counter_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterCubit cubit = CounterCubit.get(context);

    return BlocBuilder(
      bloc: cubit,
      builder: (_, state) {
        print(cubit.count);
        return Scaffold(
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
              cubit.increase();
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
                  "${cubit.count}",
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
