import 'package:json_annotation/json_annotation.dart';

import 'delete.dart';
import 'get.dart';

part 'api_promotional_messages_id.g.dart';

@JsonSerializable()
class ApiPromotionalMessagesId {
  @JsonKey(name: 'get')
  Get? apiPromotionalMessagesIdGet;
  Delete? delete;

  ApiPromotionalMessagesId({this.apiPromotionalMessagesIdGet, this.delete});

  factory ApiPromotionalMessagesId.fromJson(Map<String, dynamic> json) {
    return _$ApiPromotionalMessagesIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiPromotionalMessagesIdToJson(this);
}
