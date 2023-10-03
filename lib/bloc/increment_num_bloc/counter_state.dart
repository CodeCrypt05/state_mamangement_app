abstract class CounterState {}

class CounterInitialState extends CounterState {
  final int count;
  CounterInitialState(this.count);
}
