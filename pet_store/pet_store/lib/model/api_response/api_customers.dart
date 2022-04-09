import 'package:json_annotation/json_annotation.dart';

import 'get.dart';
import 'post.dart';
import 'put.dart';

part 'api_customers.g.dart';

@JsonSerializable()
class ApiCustomers {
  @JsonKey(name: 'get')
  Get? apiCustomersGet;
  Post? post;
  Put? put;

  ApiCustomers({this.apiCustomersGet, this.post, this.put});

  factory ApiCustomers.fromJson(Map<String, dynamic> json) {
    return _$ApiCustomersFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiCustomersToJson(this);
}
