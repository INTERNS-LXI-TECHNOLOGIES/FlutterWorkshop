import 'package:json_annotation/json_annotation.dart';

part 'user_login.g.dart';

@JsonSerializable()
class UserLogin {
  String? type;

  UserLogin({this.type});

  factory UserLogin.fromJson(Map<String, dynamic> json) {
    return _$UserLoginFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserLoginToJson(this);
}
