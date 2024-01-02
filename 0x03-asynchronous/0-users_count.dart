import '0-util.dart';

Future <void> usersCount() async {
  int users = await fetchUsersCount();
  print('$users');
}