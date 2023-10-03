import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:statemanagement_app/bloc/internet_bloc/internet_event.dart';
import 'package:statemanagement_app/bloc/internet_bloc/internet_state.dart';

class InternetBloc extends Bloc<InternetEvent, InternetState> {
  final Connectivity _connectivity = Connectivity();
  StreamSubscription? connectivitySubscription;

  InternetBloc() : super(InternetInitialState()) {
    on<InternetLossEvent>((event, emit) => emit(InternetLossState()));
    on<InternetGainEvent>((event, emit) => emit(InternetGainState()));

    connectivitySubscription =
        _connectivity.onConnectivityChanged.listen((result) {
      if (result == ConnectivityResult.mobile ||
          result == ConnectivityResult.wifi) {
        add(InternetGainEvent());
      } else {
        add(InternetLossEvent());
      }
    });
  }

  @override
  Future<void> close() {
    // TODO: implement close
    connectivitySubscription?.cancel();
    return super.close();
  }
}
