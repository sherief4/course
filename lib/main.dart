import 'package:first_project/counter_cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_page.dart';

void main() {
  runApp(MyApp());
}

/// Everything in flutter is a widget
/// Application itself is a widget
/// Home Page
///  Login Page
///  Profile Page
///  Scaffold Widget
///  Safe Area Widget
///  Column /// top start left
///  cross axis alignment

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => CounterCubit(),
        child: CounterPage(),
      ),
    );
  }
}
