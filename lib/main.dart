import 'package:flutter/material.dart';
import 'package:flutter_repository_pattern/data/datasources/remote_data_source.dart';
import 'package:flutter_repository_pattern/data/repositories/user_repository.dart';
import 'package:flutter_repository_pattern/domain/repositories/user_repository.dart';
import 'package:flutter_repository_pattern/presentation/screens/home_screen.dart';

void main() {
  final remoteDataSource = RemoteDataSource();
  final userRepository = UserRepositoryImpl(
    remoteDataSource: remoteDataSource,
  );
  runApp(MyApp(
    userRepository: userRepository,
  ));
}

class MyApp extends StatelessWidget {
  final UserRepository userRepository;

  const MyApp({super.key, required this.userRepository});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomeScreen(
        userRepository: userRepository,
      ),
    );
  }
}
