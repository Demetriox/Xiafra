import 'dart:convert';
import 'package:carrers/models/user_model.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Session {
  final token = "token";
  final career = "career";
  final storage = const FlutterSecureStorage();

  set<T>(String key, T data) async {
    final dataEncoded = json.encode(data);
    await storage.write(
      key: key,
      value: dataEncoded,
    );
  }

  Future<String> get(String key) async {
    final result = await storage.read(key: key);
    if (result != null) {
      return result;
    }
    return "";
  }

  Future<User> getUser() async {
    final result = await storage.read(key: "user");
    if (result == null) {
      return User();
    }
    final User user = User.fromJson(json.decode(result));
    if (user != User()) {
      return user;
    }
    return User();
  }

  Future<String> getToken() async {
    final result = await storage.read(key: "user");
    final User user = User.fromJson(json.decode(result!));
    return user.accessToken!;
  }

  Future<String> getCareer() async {
    final result = await storage.read(key: "user");
    final User user = User.fromJson(json.decode(result!));
    return user.career!;
  }

  delete(String key) async {
    await storage.delete(key: key);
  }

  clear() async {
    await storage.deleteAll();
  }
}
