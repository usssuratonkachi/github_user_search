import 'package:git_hub_searcher/data/api_client/user_api_client.dart';
import 'package:git_hub_searcher/domain/mappers/user_mapper.dart';

import '../entity/user_entity.dart';

class UserRepository {
  UserRepository({UserApiClient? userApiClient, required this.userMapper})
      : _userApiClient = userApiClient ?? UserApiClient();

  final UserApiClient _userApiClient;
  final UserMapper userMapper;

  Future<UserEntity> fetchUser({required username}) async {
    final user = await _userApiClient.getUser(username: username);

    final mappedUser = userMapper.map(user);

    return mappedUser;
  }
}
