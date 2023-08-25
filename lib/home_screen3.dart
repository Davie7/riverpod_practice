import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/main.dart';


// for streamprovider
class HomeScreen3 extends ConsumerWidget {
  const HomeScreen3({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: ref.watch(streamProvider).when(data: (data) {
        return Text(data.toString());
      }, error: (error, stackTrace) {
        return Center(
          child: Text(
            error.toString(),
          ),
        );
      }, loading: () {
        return const Center(child: CircularProgressIndicator());
      }),
    );
  }
}
