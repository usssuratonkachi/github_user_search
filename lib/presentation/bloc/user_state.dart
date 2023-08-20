part of 'user_bloc.dart';

abstract class UserState extends Equatable {
  const UserState();
}

class UserInitial extends UserState {
  @override
  List<Object> get props => [];
}

class UserSuccess extends UserState {
  const UserSuccess({required this.user});

  final UserEntity user;

  @override
  List<Object> get props => [];
}

class UserFailure extends UserState {
  @override
  List<Object> get props => [];
}
