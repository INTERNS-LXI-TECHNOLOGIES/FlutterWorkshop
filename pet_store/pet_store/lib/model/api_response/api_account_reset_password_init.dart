import 'package:json_annotation/json_annotation.dart';

import 'post.dart';

part 'api_account_reset_password_init.g.dart';

@JsonSerializable()
class ApiAccountResetPasswordInit {
  Post? post;

  ApiAccountResetPasswordInit({this.post});

  factory ApiAccountResetPasswordInit.fromJson(Map<String, dynamic> json) {
    return _$ApiAccountResetPasswordInitFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiAccountResetPasswordInitToJson(this);
}
