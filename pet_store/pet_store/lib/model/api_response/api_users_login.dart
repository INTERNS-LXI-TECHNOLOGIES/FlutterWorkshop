import 'package:json_annotation/json_annotation.dart';

import 'delete.dart';
import 'get.dart';

part 'api_users_login.g.dart';

@JsonSerializable()
class ApiUsersLogin {
  @JsonKey(name: 'get')
  Get? apiUsersLoginGet;
  Delete? delete;

  ApiUsersLogin({this.apiUsersLoginGet, this.delete});

  factory ApiUsersLogin.fromJson(Map<String, dynamic> json) {
    return _$ApiUsersLoginFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiUsersLoginToJson(this);
}
