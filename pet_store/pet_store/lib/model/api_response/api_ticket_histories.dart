import 'package:json_annotation/json_annotation.dart';

import 'get.dart';
import 'post.dart';
import 'put.dart';

part 'api_ticket_histories.g.dart';

@JsonSerializable()
class ApiTicketHistories {
  @JsonKey(name: 'get')
  Get? apiTicketHistoriesGet;
  Post? post;
  Put? put;

  ApiTicketHistories({this.apiTicketHistoriesGet, this.post, this.put});

  factory ApiTicketHistories.fromJson(Map<String, dynamic> json) {
    return _$ApiTicketHistoriesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiTicketHistoriesToJson(this);
}
