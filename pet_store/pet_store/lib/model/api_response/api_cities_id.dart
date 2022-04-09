import 'package:json_annotation/json_annotation.dart';

import 'delete.dart';
import 'get.dart';

part 'api_cities_id.g.dart';

@JsonSerializable()
class ApiCitiesId {
  @JsonKey(name: 'get')
  Get? apiCitiesIdGet;
  Delete? delete;

  ApiCitiesId({this.apiCitiesIdGet, this.delete});

  factory ApiCitiesId.fromJson(Map<String, dynamic> json) {
    return _$ApiCitiesIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiCitiesIdToJson(this);
}
