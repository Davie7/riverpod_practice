import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/main.dart';

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {

 String userNo = '1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ref.watch(fetchUserProvider(userNo)).when(data: (data) {
        return Column(
          children: [
            TextField(onSubmitted: (value)=> setState(() {
              userNo = value;
            }),),
            Center(
              child: Text(data.name),
            )
          ],
        );
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
