part of 'user_bloc.dart';

abstract class UserEvent extends Equatable {
  const UserEvent();
}

class UserFetch extends UserEvent {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class BackToSearchPage extends UserEvent {
  @override
  List<Object?> get props => throw UnimplementedError();
}
