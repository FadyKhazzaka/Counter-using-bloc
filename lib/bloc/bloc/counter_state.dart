part of 'counter_bloc.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {}

class CounterValueChangeState extends CounterState {
  final int counter;
  CounterValueChangeState({
    required this.counter,
  });
}
