import 'package:json_annotation/json_annotation.dart';

import 'post.dart';

part 'api_account_change_password.g.dart';

@JsonSerializable()
class ApiAccountChangePassword {
  Post? post;

  ApiAccountChangePassword({this.post});

  factory ApiAccountChangePassword.fromJson(Map<String, dynamic> json) {
    return _$ApiAccountChangePasswordFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiAccountChangePasswordToJson(this);
}
