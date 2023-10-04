import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:statemanagement_app/bloc/signin_bloc/signin_bloc.dart';
import 'package:statemanagement_app/bloc/signin_bloc/signin_event.dart';
import 'package:statemanagement_app/bloc/signin_bloc/signin_state.dart';

class SignInScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final SignInBloc signInBloc = BlocProvider.of<SignInBloc>(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<SignInBloc, SignInState>(
            builder: (context, state) {
              if (state is SignInErrorState) {
                return Text(
                  state.errorMessage as String,
                  style: TextStyle(color: Colors.red),
                );
              } else {
                return Container();
              }
            },
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            controller: emailController,
            onChanged: (value) {
              signInBloc.add(SignInTextChangedEvent(
                  emailController.text, passwordController.text));
            },
            decoration: const InputDecoration(
              hintText: 'Email Address',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            controller: passwordController,
            onChanged: (value) {
              signInBloc.add(SignInTextChangedEvent(
                  emailController.text, passwordController.text));
            },
            decoration: const InputDecoration(
              hintText: 'Password',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          BlocBuilder<SignInBloc, SignInState>(
            builder: (context, state) {
              return ElevatedButton(
                onPressed: () {},
                child: Text('Sign in'),
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      (state is SignInValidState) ? Colors.blue : Colors.grey,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
