import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  // void onSubmitName(WidgetRef ref, value) {
  //   ref.read(userProvider.notifier).updateName(value);
  // }

  // void onSubmitAge(WidgetRef ref, value) {
  //   ref.read(userProvider.notifier).updateAge(
  //         int.parse(value),
  //       );
  // }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final user = ref.watch(userProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        //  Text(user.name),
      ),
      body: Column(
        children: [
          TextField(
            // onSubmitted: (value) => onSubmitName(ref, value),
          ),
          TextField(
            // onSubmitted: (value) => onSubmitAge(ref, value),
          ),
          Center(
            // child: Text(
            //   user.age.toString(),
            // ),
          )
        ],
      ),
    );
  }
}
