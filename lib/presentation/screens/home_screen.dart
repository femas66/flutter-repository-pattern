import 'package:flutter/material.dart';
import 'package:flutter_repository_pattern/domain/models/user.dart';
import '../../domain/repositories/user_repository.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';
  final UserRepository userRepository;

  HomeScreen({required this.userRepository});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: FutureBuilder<User>(
        future: userRepository.getUser('1'),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final user = snapshot.data!;
            return Text('Welcome, ${user.name}!');
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
