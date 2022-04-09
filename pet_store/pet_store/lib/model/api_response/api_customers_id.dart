import 'package:json_annotation/json_annotation.dart';

import 'delete.dart';
import 'get.dart';

part 'api_customers_id.g.dart';

@JsonSerializable()
class ApiCustomersId {
  @JsonKey(name: 'get')
  Get? apiCustomersIdGet;
  Delete? delete;

  ApiCustomersId({this.apiCustomersIdGet, this.delete});

  factory ApiCustomersId.fromJson(Map<String, dynamic> json) {
    return _$ApiCustomersIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiCustomersIdToJson(this);
}
