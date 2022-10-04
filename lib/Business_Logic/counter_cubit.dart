import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  static CounterCubit get(BuildContext context) => BlocProvider.of(context);

  int numb = 0;

  void inCreaseNumber() {
    numb++;
    emit(Counter());
  }
}
