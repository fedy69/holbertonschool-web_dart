import 'dart:async';
import '0-util.dart';

Future<void> usersCount() async {
  int count = await fetchUsersCount();
  print(count);
}

Future<int> fetchUsersCount() => Future.delayed(
      const Duration(seconds: 2),
      () => 19,
);