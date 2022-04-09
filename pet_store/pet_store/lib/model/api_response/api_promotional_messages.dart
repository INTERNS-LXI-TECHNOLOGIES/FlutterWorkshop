import 'package:json_annotation/json_annotation.dart';

import 'get.dart';
import 'post.dart';
import 'put.dart';

part 'api_promotional_messages.g.dart';

@JsonSerializable()
class ApiPromotionalMessages {
  @JsonKey(name: 'get')
  Get? apiPromotionalMessagesGet;
  Post? post;
  Put? put;

  ApiPromotionalMessages({
    this.apiPromotionalMessagesGet,
    this.post,
    this.put,
  });

  factory ApiPromotionalMessages.fromJson(Map<String, dynamic> json) {
    return _$ApiPromotionalMessagesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiPromotionalMessagesToJson(this);
}
