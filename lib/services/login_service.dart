import 'dart:convert';
import 'package:http/http.dart' as http;

Future<String> loginUser(String email, String password) async {
  final url = Uri.parse('https://reqres.in/api/login');
  final response = await http.post(
    url,
    headers: {'Content-Type': 'application/json'},
    body: json.encode({
      'email': email,
      'password': password,
    }),
  );

  if (response.statusCode == 200) {
    final data = json.decode(response.body);
    return data['token']; 
  } else {
    final errorData = json.decode(response.body);
    throw Exception(errorData['error']);
  }
}
