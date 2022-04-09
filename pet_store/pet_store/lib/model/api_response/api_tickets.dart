import 'package:json_annotation/json_annotation.dart';

import 'get.dart';
import 'post.dart';
import 'put.dart';

part 'api_tickets.g.dart';

@JsonSerializable()
class ApiTickets {
  @JsonKey(name: 'get')
  Get? apiTicketsGet;
  Post? post;
  Put? put;

  ApiTickets({this.apiTicketsGet, this.post, this.put});

  factory ApiTickets.fromJson(Map<String, dynamic> json) {
    return _$ApiTicketsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiTicketsToJson(this);
}
