import 'package:json_annotation/json_annotation.dart';

import 'get.dart';
import 'post.dart';
import 'put.dart';

part 'api_service_types.g.dart';

@JsonSerializable()
class ApiServiceTypes {
  @JsonKey(name: 'get')
  Get? apiServiceTypesGet;
  Post? post;
  Put? put;

  ApiServiceTypes({this.apiServiceTypesGet, this.post, this.put});

  factory ApiServiceTypes.fromJson(Map<String, dynamic> json) {
    return _$ApiServiceTypesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiServiceTypesToJson(this);
}
