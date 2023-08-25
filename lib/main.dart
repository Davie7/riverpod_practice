import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/home_screen2.dart';
import 'package:riverpod_practice/stateful_home_screen.dart';
import 'package:riverpod_practice/user.dart';
// final userProvider = StateNotifierProvider<UserNotifier, User>(
//   (ref) => UserNotifier(),
// );

// final userChangeNotifierProvider = ChangeNotifierProvider((ref) => UserNotifierChange());

final fetchUserProvider = FutureProvider.family((ref, String input) async {
  final userRepository = ref.watch(userRepositoryProvider);
  return userRepository.fetchUserData(input);
});

final streamProvider = StreamProvider((ref) async* {
  yield[1,2,3,4,5,6,7,8,9,10] ;
});

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Riverpod practice',
      home: const MyHomePage(),
      // const HomeScreen(),
    );
  }
}
