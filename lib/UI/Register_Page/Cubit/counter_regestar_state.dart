part of 'counter_regestar_cubit.dart';

@immutable
abstract class CounterRegestarState {}

class CounterRegestarInitial extends CounterRegestarState {}

class Counter extends CounterRegestarState {}

class Loading extends CounterRegestarState {}

class Loaded extends CounterRegestarState {
  RegesterResponse RegisterData;

  Loaded(this.RegisterData);
}

class onError extends CounterRegestarState {}
