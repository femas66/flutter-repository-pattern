import '../datasources/remote_data_source.dart';
import '../../domain/models/user.dart';
import '../../domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final RemoteDataSource remoteDataSource;

  UserRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<User> getUser(String userId) async {
    final userModel = await remoteDataSource.getUser(userId);
    final user = User.fromUserModel(userModel);
    return user;
  }
}