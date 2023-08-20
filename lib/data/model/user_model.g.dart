// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => $checkedCreate(
      'UserModel',
      json,
      ($checkedConvert) {
        final val = UserModel(
          avatarUrl: $checkedConvert('avatar_url', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String?),
          email: $checkedConvert('email', (v) => v as String?),
          location: $checkedConvert('location', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'avatarUrl': 'avatar_url'},
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'avatar_url': instance.avatarUrl,
      'name': instance.name,
      'location': instance.location,
      'email': instance.email,
    };
