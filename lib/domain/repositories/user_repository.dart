import '../models/user.dart';

abstract class UserRepository {
  Future<User> getUser(String userId);
}