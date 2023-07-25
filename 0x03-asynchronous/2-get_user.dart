import '2-util.dart';

Future<void> getUser() async {
  try {
    String userData = await fetchUserData();
    print(userData);
  } catch (error) {
    print("error caught: $error");
  }
}