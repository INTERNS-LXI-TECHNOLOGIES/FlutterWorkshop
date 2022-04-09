import 'package:json_annotation/json_annotation.dart';

import 'get.dart';
import 'post.dart';
import 'put.dart';

part 'api_pin_codes.g.dart';

@JsonSerializable()
class ApiPinCodes {
  @JsonKey(name: 'get')
  Get? apiPinCodesGet;
  Post? post;
  Put? put;

  ApiPinCodes({this.apiPinCodesGet, this.post, this.put});

  factory ApiPinCodes.fromJson(Map<String, dynamic> json) {
    return _$ApiPinCodesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiPinCodesToJson(this);
}
