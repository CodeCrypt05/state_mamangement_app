import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:statemanagement_app/bloc/internet_bloc/internet_state.dart';
import 'package:statemanagement_app/cubits/internet_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: BlocConsumer<InternetCubit, InternetStates>(
            listener: (context, state) {
              if (state == InternetStates.Gain) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Internet Connected'),
                    backgroundColor: Colors.green,
                  ),
                );
              } else if (state == InternetStates.Lost) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Internet Not Connected'),
                    backgroundColor: Colors.red,
                  ),
                );
              }
            },
            builder: (context, state) {
              if (state == InternetStates.Gain) {
                return Text('Connected');
              } else if (state == InternetStates.Lost) {
                return Text('Not Connected');
              } else {
                return Text('Loading...');
              }
            },
          ),
        ),
      ),
    );
  }
}
