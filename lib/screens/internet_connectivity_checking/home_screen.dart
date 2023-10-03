// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:statemanagement_app/bloc/internet_bloc/internet_bloc.dart';
// import 'package:statemanagement_app/bloc/internet_bloc/internet_state.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Center(
//           child: BlocConsumer<InternetBloc, InternetState>(
//             listener: (context, state) {
//               if (state is InternetGainState) {
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   SnackBar(
//                     content: Text('Internet Connected'),
//                     backgroundColor: Colors.green,
//                   ),
//                 );
//               } else if (state is InternetLossState) {
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   SnackBar(
//                     content: Text('Internet Not Connected'),
//                     backgroundColor: Colors.red,
//                   ),
//                 );
//               }
//             },
//             builder: (context, state) {
//               if (state is InternetGainState) {
//                 return Text('Connected');
//               } else if (state is InternetLossState) {
//                 return Text('Not Connected');
//               } else {
//                 return Text('Loading...');
//               }
//             },
//           ),
//           // child: BlocBuilder<InternetBloc, InternetState>(
//           //   builder: (context, state) {
//           //     if (state is InternetGainState) {
//           //       return Text('Connected');
//           //     } else if (state is InternetLossState) {
//           //       return Text('Not Connected');
//           //     } else{
//           //       return Text('Loading...');
//           //     }
//           //   },
//           // ),
//         ),
//       ),
//     );
//   }
// }
