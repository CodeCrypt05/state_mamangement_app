import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:statemanagement_app/bloc/increment_num_bloc/counter_bloc.dart';
import 'package:statemanagement_app/bloc/increment_num_bloc/counter_state.dart';
import 'package:statemanagement_app/cubits/counter_cubit.dart';
import 'package:statemanagement_app/screens/number_incement/second_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: BlocBuilder<CounterCubit, int>(builder: (context, state) {
              // if (state is CounterInitialState) {
              //   final count = (state).count;
              // }
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Count:',
                      style: TextStyle(fontSize: 24),
                    ),
                    Text(
                      '$state',
                      style: TextStyle(fontSize: 48),
                    ),
                  ],
                ),
              );
            }),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (ctx) => SecondScreen()));
              },
              child: const Icon(Icons.navigate_next),
            ),
          )
        ],
      ),
    );
  }
}
