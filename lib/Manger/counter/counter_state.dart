part of 'counter_cubit.dart';

abstract class CounterState {}

class CounterInitial extends CounterState {}

class CounterValueChanged extends CounterState {
  final int counter;

  CounterValueChanged({required this.counter});
}
