import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:git_hub_searcher/domain/entity/user_entity.dart';

import '../../domain/repository/user_repository.dart';

part 'user_event.dart';

part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository userRepository;
  final TextEditingController textEditingController = TextEditingController();

  UserBloc(this.userRepository) : super(UserInitial()) {
    on<UserFetch>(_fetchUser);
    on<BackToSearchPage>(_backToSearchPage);
  }

  Future<void> _fetchUser(
    UserFetch event,
    Emitter<UserState> emit,
  ) async {
    try {
      final user =
          await userRepository.fetchUser(username: textEditingController.text);

      emit(UserSuccess(user: user));
    } catch (_) {
      emit(UserFailure());
    }
  }

  void _backToSearchPage(BackToSearchPage event, Emitter<UserState> emit) {
    textEditingController.clear();
    emit(UserInitial());
  }
}
