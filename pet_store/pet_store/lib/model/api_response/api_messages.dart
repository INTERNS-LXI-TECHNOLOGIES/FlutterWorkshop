import 'package:json_annotation/json_annotation.dart';

import 'get.dart';
import 'post.dart';
import 'put.dart';

part 'api_messages.g.dart';

@JsonSerializable()
class ApiMessages {
  @JsonKey(name: 'get')
  Get? apiMessagesGet;
  Post? post;
  Put? put;

  ApiMessages({this.apiMessagesGet, this.post, this.put});

  factory ApiMessages.fromJson(Map<String, dynamic> json) {
    return _$ApiMessagesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiMessagesToJson(this);
}
