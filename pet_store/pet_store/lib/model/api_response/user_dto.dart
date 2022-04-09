import 'package:json_annotation/json_annotation.dart';

import 'properties.dart';

part 'user_dto.g.dart';

@JsonSerializable()
class UserDto {
  String? type;
  Properties? properties;
  String? title;

  UserDto({this.type, this.properties, this.title});

  factory UserDto.fromJson(Map<String, dynamic> json) {
    return _$UserDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserDtoToJson(this);
}
