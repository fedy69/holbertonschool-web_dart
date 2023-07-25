import '3-util.dart';
import 'dart:async';
import 'dart:convert';

Future<String> greetUser() async {
  try {
    String userData = await fetchUserData();
    Map<String, dynamic> userDataMap = json.decode(userData);
    String username = userDataMap["username"];
    return "Hello $username.";
  } catch (error) {
    return "error caught: $error";
  }
}

Future<String> loginUser() async {
  try {
    if (await checkCredentials()) {
      print("There is a user: true");
      return await greetUser();
    } else {
      print("There is a user: false");
      return "Wrong credentials";
    }
  } catch (e) {
    return "error caugth $e";
  }
}
