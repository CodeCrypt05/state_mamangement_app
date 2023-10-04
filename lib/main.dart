import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:statemanagement_app/bloc/signin_bloc/signin_bloc.dart';
import 'package:statemanagement_app/cubits/counter_cubit.dart';
import 'package:statemanagement_app/cubits/internet_cubit.dart';
import 'package:statemanagement_app/screens/number_incement/home_screen.dart';
import 'package:statemanagement_app/screens/welcome/signin_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: SignInScreen(),
      ),
    );
  }
}
