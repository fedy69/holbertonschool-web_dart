import '2-util.dart';

Future<void> getUser() async {
    try {
         var user = await fetchUser();
    } catch (err) {
        print('error caught: $err');
    }
}