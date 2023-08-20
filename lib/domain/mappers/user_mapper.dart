import 'package:git_hub_searcher/data/model/user_model.dart';
import 'package:git_hub_searcher/domain/entity/user_entity.dart';

import 'mapper.dart';

class UserMapper extends Mapper<UserModel, UserEntity> {
  @override
  UserEntity map(UserModel? model) {
    return UserEntity(avatarUrl: model?.avatarUrl ?? '',
        name: model?.name ?? '',
        email: model?.email ?? '',
        location: model?.location ?? '');
  }
}