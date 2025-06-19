import 'package:first_project/counter_cubit/counter_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates>{
  CounterCubit():super(CounterInitialState());

  static CounterCubit get(BuildContext context) => BlocProvider.of(context);


  int count = 0 ;

  void increase(){
    count ++ ;
    emit(CountState());
  }
}