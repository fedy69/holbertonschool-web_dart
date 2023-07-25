import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> printRmCharacters() async {
  try {
    final response = await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      final characters = jsonData['results'];

      for (var character in characters) {
        print(character['name']);
      }
    } else {
      print('Error: Unable to fetch Rick and Morty characters. Status Code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error caught: $e');
  }
}

