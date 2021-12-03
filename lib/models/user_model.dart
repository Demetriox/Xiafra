import 'dart:convert';

User UserFromJson(String str) => User.fromJson(json.decode(str));

String UserToJson(User data) => json.encode(data.toJson());

class User {
  User({
    this.userId,
    this.name,
    this.career,
    this.accessToken,
    this.expires,
  });

  String? userId;
  String? name;
  String? career;
  String? accessToken;
  int? expires;

  factory User.fromJson(Map<String, dynamic> json) => User(
    userId: json["UserId"] == null ? null : json["UserId"],
    name: json["Name"] == null ? null : json["Name"],
    career: json["Career"] == null ? null : json["Career"],
    accessToken: json["AccessToken"] == null ? null : json["AccessToken"],
    expires: json["Expires"] == null ? null : json["Expires"],
  );

  Map<String, dynamic> toJson() => {
    "UserId": userId == null ? null : userId,
    "Name": name == null ? null : name,
    "Career": career == null ? null : career,
    "AccessToken": accessToken == null ? null : accessToken,
    "Expires": expires == null ? null : expires,
  };
}