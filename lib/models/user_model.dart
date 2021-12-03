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
    this.email,
  });

  String? userId;
  String? name;
  String? career;
  String? accessToken;
  String? email;
  int? expires;

  factory User.fromJson(Map<String, dynamic> json) => User(
        userId: json["UserId"],
        name: json["Name"],
        career: json["Career"],
        accessToken: json["AccessToken"],
        expires: json["Expires"],
      );

  Map<String, dynamic> toJson() => {
        "UserId": userId,
        "Name": name,
        "Career": career,
        "AccessToken": accessToken,
        "Expires": expires,
        "Email": email,
      };
}
