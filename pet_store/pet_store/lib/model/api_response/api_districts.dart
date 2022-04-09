import 'package:json_annotation/json_annotation.dart';

import 'get.dart';
import 'post.dart';
import 'put.dart';

part 'api_districts.g.dart';

@JsonSerializable()
class ApiDistricts {
  @JsonKey(name: 'get')
  Get? apiDistrictsGet;
  Post? post;
  Put? put;

  ApiDistricts({this.apiDistrictsGet, this.post, this.put});

  factory ApiDistricts.fromJson(Map<String, dynamic> json) {
    return _$ApiDistrictsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiDistrictsToJson(this);
}
