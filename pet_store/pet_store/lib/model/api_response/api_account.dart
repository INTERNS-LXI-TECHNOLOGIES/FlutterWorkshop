import 'package:json_annotation/json_annotation.dart';

import 'get.dart';
import 'post.dart';

part 'api_account.g.dart';

@JsonSerializable()
class ApiAccount {
  @JsonKey(name: 'get')
  Get? apiAccountGet;
  Post? post;

  ApiAccount({this.apiAccountGet, this.post});

  factory ApiAccount.fromJson(Map<String, dynamic> json) {
    return _$ApiAccountFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiAccountToJson(this);
}
