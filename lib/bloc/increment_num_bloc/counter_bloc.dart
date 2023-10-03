import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:statemanagement_app/bloc/increment_num_bloc/counter_event.dart';
import 'package:statemanagement_app/bloc/increment_num_bloc/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int count = 0;

  CounterBloc() : super(CounterInitialState(0)) {
    on<IncrementNumberEvent>((event, emit) {
      count++;
      emit(CounterInitialState(count));
    });

    on<DecrementNumberEvent>((event, emit) {
      count--;
      emit(CounterInitialState(count));
    });
  }
}
