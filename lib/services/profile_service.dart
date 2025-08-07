import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:ppb_modul_1/models/user_model.dart';

Future<User> fetchUserProfile() async {
  final response = await http.get(
  Uri.parse('https://reqres.in/api/users/2'),
  headers: {
    'Authorization': 'Bearer your_token_here',
    'X-API-Key': 'reqres-free-v1',
    'Content-Type': 'application/json',
  },
);

  if (response.statusCode == 200) {
    final jsonData = json.decode(response.body);
    final userData = jsonData['data'];
    return User.fromJson(userData);
  } else {
    throw Exception('Failed to load user profile');
  }
}
