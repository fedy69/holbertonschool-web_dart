import 'dart:convert';
import '3-util.dart';

Future<String> greetUser() async {
  try {
    final userData = await fetchUserData();
    final username = json.decode(userData)['username'];
    return 'Hello $username';
  } catch (error) {
    return 'error caught: $error';
  }
}

Future<String> loginUser() async {
  try {
    final hasUser = await checkCredentials();
    print('There is a user: $hasUser');

    return hasUser ? await greetUser() : 'Wrong credentials';
  } catch (error) {
    return 'error caught: $error';
  }
}
