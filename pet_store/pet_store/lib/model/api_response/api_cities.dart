import 'package:json_annotation/json_annotation.dart';

import 'get.dart';
import 'post.dart';
import 'put.dart';

part 'api_cities.g.dart';

@JsonSerializable()
class ApiCities {
  @JsonKey(name: 'get')
  Get? apiCitiesGet;
  Post? post;
  Put? put;

  ApiCities({this.apiCitiesGet, this.post, this.put});

  factory ApiCities.fromJson(Map<String, dynamic> json) {
    return _$ApiCitiesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiCitiesToJson(this);
}
