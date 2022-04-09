import 'package:json_annotation/json_annotation.dart';

import 'get.dart';

part 'api_users_authorities.g.dart';

@JsonSerializable()
class ApiUsersAuthorities {
  @JsonKey(name: 'get')
  Get? apiUsersAuthoritiesGet;

  ApiUsersAuthorities({this.apiUsersAuthoritiesGet});

  factory ApiUsersAuthorities.fromJson(Map<String, dynamic> json) {
    return _$ApiUsersAuthoritiesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiUsersAuthoritiesToJson(this);
}
