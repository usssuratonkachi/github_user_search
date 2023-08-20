import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  const UserEntity(
      {required this.avatarUrl,
      required this.name,
      required this.email,
      required this.location});

  final String avatarUrl;
  final String name;
  final String location;
  final String email;

  @override
  List<Object> get props => [avatarUrl, name, location, email];
}
