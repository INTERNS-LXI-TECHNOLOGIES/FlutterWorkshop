import 'package:json_annotation/json_annotation.dart';

import 'delete.dart';
import 'get.dart';

part 'api_messages_id.g.dart';

@JsonSerializable()
class ApiMessagesId {
  @JsonKey(name: 'get')
  Get? apiMessagesIdGet;
  Delete? delete;

  ApiMessagesId({this.apiMessagesIdGet, this.delete});

  factory ApiMessagesId.fromJson(Map<String, dynamic> json) {
    return _$ApiMessagesIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiMessagesIdToJson(this);
}
