import '1-util.dart';

Future<String> getUserId() async {
  String data = await fetchUserData();
  Map<String, dynamic> userMap = json.decode(data);
  return data['id'];
}
