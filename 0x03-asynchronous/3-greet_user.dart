import '3-util.dart';
import 'dart:convert';

Future<String> greetUser() async {
    try {
        var user = await fetchUserData();
        var id = json.decode(user)['username'];
        return 'Hello $id';
    } catch (err) {
        print ('error caught: $err');
        throw "";
    }
}

Future<String> loginUser() async {
    try {
        if (await checkCredentials()) {
            print("There is a user: true");
            return await greetUser();
        } else {
            print("There is a user: false");
            return 'Wrong credentials';
        }
    } catch (err) {
        return 'error caught: $err';
    }
}