import '3-util.dart';
import 'dart:async';

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
    bool isValidUser = await checkCredentials();
    print("There is a user: $isValidUser");
    if (isValidUser) {
      return await greetUser();
    } else {
      return "Wrong credentials";
    }
  } catch (error) {
    return "error caught: $error";
  }
}
