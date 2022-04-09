import 'package:json_annotation/json_annotation.dart';

import 'post.dart';

part 'api_account_reset_password_finish.g.dart';

@JsonSerializable()
class ApiAccountResetPasswordFinish {
  Post? post;

  ApiAccountResetPasswordFinish({this.post});

  factory ApiAccountResetPasswordFinish.fromJson(Map<String, dynamic> json) {
    return _$ApiAccountResetPasswordFinishFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiAccountResetPasswordFinishToJson(this);
}
