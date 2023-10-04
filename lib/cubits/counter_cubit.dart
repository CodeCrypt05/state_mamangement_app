import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  int count = 0;
  CounterCubit() : super(0);
  void increment() => emit(state + 1);
  void decrment() => emit(state - 1);
}
