import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:git_hub_searcher/domain/mappers/user_mapper.dart';
import 'package:git_hub_searcher/domain/repository/user_repository.dart';

Future<Widget> injection(Widget app) async {
  final userMapper = UserMapper();

  final userRepository = UserRepository(userMapper: userMapper);

  return MultiRepositoryProvider(providers: [
    RepositoryProvider<UserRepository>(create: (_) => userRepository)
  ], child: app);
}
