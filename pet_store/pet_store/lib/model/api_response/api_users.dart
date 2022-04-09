import 'package:json_annotation/json_annotation.dart';

import 'get.dart';
import 'post.dart';
import 'put.dart';

part 'api_users.g.dart';

@JsonSerializable()
class ApiUsers {
  @JsonKey(name: 'get')
  Get? apiUsersGet;
  Post? post;
  Put? put;

  ApiUsers({this.apiUsersGet, this.post, this.put});

  factory ApiUsers.fromJson(Map<String, dynamic> json) {
    return _$ApiUsersFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiUsersToJson(this);
}
