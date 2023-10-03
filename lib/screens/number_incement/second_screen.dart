import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:statemanagement_app/bloc/increment_num_bloc/counter_bloc.dart';
import 'package:statemanagement_app/bloc/increment_num_bloc/counter_event.dart';
import 'package:statemanagement_app/bloc/increment_num_bloc/counter_state.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterBloc _counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      body: Center(
        child: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            if (state is CounterInitialState) {
              final count = (state as CounterInitialState).count;

              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Count:',
                      style: TextStyle(fontSize: 24),
                    ),
                    Text(
                      '$count',
                      style: TextStyle(fontSize: 48),
                    ),
                  ],
                ),
              );
            }
            return Container();
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "btn1",
            onPressed: () {
              _counterBloc.add(IncrementNumberEvent());
            },
            child: Icon(Icons.add),
          ),
          SizedBox(height: 16),
          FloatingActionButton(
            heroTag: "btn2",
            onPressed: () {
              _counterBloc.add(DecrementNumberEvent());
            },
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
