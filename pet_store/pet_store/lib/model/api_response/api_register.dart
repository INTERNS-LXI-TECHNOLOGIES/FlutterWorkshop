import 'package:json_annotation/json_annotation.dart';

import 'post.dart';

part 'api_register.g.dart';

@JsonSerializable()
class ApiRegister {
  Post? post;

  ApiRegister({this.post});

  factory ApiRegister.fromJson(Map<String, dynamic> json) {
    return _$ApiRegisterFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiRegisterToJson(this);
}
