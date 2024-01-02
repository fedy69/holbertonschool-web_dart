import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
    try {
        final url = Uri.parse('https://rickandmortyapi.com/api/character');
        final response = await http.get(url);
        final list = await json.decode(response.body);
        final characters = list['results'] as List;
        for (final character in characters) {
            print(character['name']);
        }
    } catch (err) {
        print('error caught: $err');
    }
}