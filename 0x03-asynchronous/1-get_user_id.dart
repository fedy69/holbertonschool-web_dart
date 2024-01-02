import 'dart:convert';
import '1-util.dart';

Future<String> getUserId() async {
  String data = await fetchUserData();
  String id = json.decode(data)['id'];
    return id;
}