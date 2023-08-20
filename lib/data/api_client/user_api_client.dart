import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/user_model.dart';

class UserRequestFailure implements Exception {}

class UserApiClient {
  UserApiClient({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  final http.Client _httpClient;

  static const _baseUrl = 'api.github.com';

  Future<UserModel> getUser({required username}) async {
    final user = Uri.https(_baseUrl, '/users/$username');

    final userResponse = await _httpClient.get(user);

    if (userResponse.statusCode != 200) {
      throw UserRequestFailure();
    }

    final userJson = jsonDecode(userResponse.body);

    return UserModel.fromJson(userJson);
  }
}
