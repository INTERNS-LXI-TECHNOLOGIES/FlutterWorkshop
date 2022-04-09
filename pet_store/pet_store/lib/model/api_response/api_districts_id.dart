import 'package:json_annotation/json_annotation.dart';

import 'delete.dart';
import 'get.dart';

part 'api_districts_id.g.dart';

@JsonSerializable()
class ApiDistrictsId {
  @JsonKey(name: 'get')
  Get? apiDistrictsIdGet;
  Delete? delete;

  ApiDistrictsId({this.apiDistrictsIdGet, this.delete});

  factory ApiDistrictsId.fromJson(Map<String, dynamic> json) {
    return _$ApiDistrictsIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiDistrictsIdToJson(this);
}
