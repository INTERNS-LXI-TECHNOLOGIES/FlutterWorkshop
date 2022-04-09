import 'package:json_annotation/json_annotation.dart';

import 'delete.dart';
import 'get.dart';

part 'api_tickets_id.g.dart';

@JsonSerializable()
class ApiTicketsId {
  @JsonKey(name: 'get')
  Get? apiTicketsIdGet;
  Delete? delete;

  ApiTicketsId({this.apiTicketsIdGet, this.delete});

  factory ApiTicketsId.fromJson(Map<String, dynamic> json) {
    return _$ApiTicketsIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiTicketsIdToJson(this);
}
