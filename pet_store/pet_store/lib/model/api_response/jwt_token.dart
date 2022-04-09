import 'package:json_annotation/json_annotation.dart';

import 'properties.dart';

part 'jwt_token.g.dart';

@JsonSerializable()
class JwtToken {
  String? type;
  Properties? properties;
  String? title;

  JwtToken({this.type, this.properties, this.title});

  factory JwtToken.fromJson(Map<String, dynamic> json) {
    return _$JwtTokenFromJson(json);
  }

  Map<String, dynamic> toJson() => _$JwtTokenToJson(this);
}
