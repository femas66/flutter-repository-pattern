import 'package:flutter/material.dart';
import 'package:flutter_repository_pattern/data/datasources/remote_data_source.dart';
import 'package:flutter_repository_pattern/data/repositories/user_repository.dart';
import 'package:flutter_repository_pattern/presentation/screens/home_screen.dart';

class AppPages {
  static const INITIAL = HomeScreen.routeName;

  static Map<String, WidgetBuilder> routes = {
    HomeScreen.routeName: (context) => HomeScreen(userRepository: UserRepositoryImpl(remoteDataSource: RemoteDataSource())),
  };
}
