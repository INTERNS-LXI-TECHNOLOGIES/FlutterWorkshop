import 'package:json_annotation/json_annotation.dart';

import 'get.dart';

part 'api_activate.g.dart';

@JsonSerializable()
class ApiActivate {
  @JsonKey(name: 'get')
  Get? apiActivateGet;

  ApiActivate({this.apiActivateGet});

  factory ApiActivate.fromJson(Map<String, dynamic> json) {
    return _$ApiActivateFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiActivateToJson(this);
}
