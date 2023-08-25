// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:riverpod_practice/main.dart';
// // for futureprovider

// class HomeScreen2 extends ConsumerWidget {
//   const HomeScreen2({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return ref.watch(fetchUserProvider).when(
//       data: (data) {
//         return Scaffold(
//           appBar: AppBar(),
//           body: Column(
//             children: [
//               Center(
//                 child: Text(data.name),
//               ),
//             ],
//           ),
//         );
//       },
//       error: (error, stackTrace) {
//         return Center(
//           child: Text('Error'),
//         );
//       },
//       loading: () {
//         return Center(
//           child: CircularProgressIndicator(),
//         );
//       },
//     );
//   }
// }
