import '2-util.dart';

Future<void> getUser() async {
  try {
    String userData = await fetchUser();
    // Print the user's string representation
    print(userData);
  } catch (error) {
    // Handle the error by printing an error message
    print('error caught: $error');
  }
}