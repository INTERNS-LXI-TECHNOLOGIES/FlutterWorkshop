import 'package:json_annotation/json_annotation.dart';

import 'delete.dart';
import 'get.dart';

part 'api_amcs_id.g.dart';

@JsonSerializable()
class ApiAmcsId {
  @JsonKey(name: 'get')
  Get? apiAmcsIdGet;
  Delete? delete;

  ApiAmcsId({this.apiAmcsIdGet, this.delete});

  factory ApiAmcsId.fromJson(Map<String, dynamic> json) {
    return _$ApiAmcsIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiAmcsIdToJson(this);
}
