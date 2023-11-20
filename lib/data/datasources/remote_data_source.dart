import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/user_model.dart';

class RemoteDataSource {
  Future<UserModel> getUser(String userId) async {
    final response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/users/$userId"));
    if (response.statusCode == 200) {
      final userData = jsonDecode(response.body);
      return UserModel(
        id: userData['id'],
        name: userData['name'],
        email: userData['email'],
      );
    } else {
      throw Exception('Gagal mendapatkan data pengguna');
    }
  }
}
