import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  const UserModel(
      {required this.avatarUrl,
      required this.name,
      required this.email,
      required this.location});

  @JsonKey(name: 'avatar_url')
  final String? avatarUrl;
  final String? name;
  final String? location;
  final String? email;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
