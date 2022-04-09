import 'package:json_annotation/json_annotation.dart';

import 'get.dart';
import 'post.dart';

part 'api_authenticate.g.dart';

@JsonSerializable()
class ApiAuthenticate {
  @JsonKey(name: 'get')
  Get? apiAuthenticateGet;
  Post? post;

  ApiAuthenticate({this.apiAuthenticateGet, this.post});

  factory ApiAuthenticate.fromJson(Map<String, dynamic> json) {
    return _$ApiAuthenticateFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiAuthenticateToJson(this);
}
