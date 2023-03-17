import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counter = 0;
  CounterBloc() : super(CounterInitial()) {
    on<CounterEvent>((event, emit) {
      if (event is IncreamentEvent) {
        counter = counter + 1;
        emit(CounterValueChangeState(counter: counter));
      } else if (event is DecreamentEvent) {
        counter--;
        emit(CounterValueChangeState(counter: counter));
      } else {
        counter = 0;
        emit(CounterValueChangeState(counter: counter));
      }
    });
  }
}
