import 'package:json_annotation/json_annotation.dart';

import 'properties.dart';

part 'password_change_dto.g.dart';

@JsonSerializable()
class PasswordChangeDto {
  String? type;
  Properties? properties;
  String? title;

  PasswordChangeDto({this.type, this.properties, this.title});

  factory PasswordChangeDto.fromJson(Map<String, dynamic> json) {
    return _$PasswordChangeDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PasswordChangeDtoToJson(this);
}
