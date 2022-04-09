import 'package:json_annotation/json_annotation.dart';

import 'delete.dart';
import 'get.dart';

part 'api_ticket_histories_id.g.dart';

@JsonSerializable()
class ApiTicketHistoriesId {
  @JsonKey(name: 'get')
  Get? apiTicketHistoriesIdGet;
  Delete? delete;

  ApiTicketHistoriesId({this.apiTicketHistoriesIdGet, this.delete});

  factory ApiTicketHistoriesId.fromJson(Map<String, dynamic> json) {
    return _$ApiTicketHistoriesIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiTicketHistoriesIdToJson(this);
}
