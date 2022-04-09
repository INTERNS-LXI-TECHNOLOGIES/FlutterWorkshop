import 'package:json_annotation/json_annotation.dart';

import 'delete.dart';
import 'get.dart';

part 'api_pin_codes_id.g.dart';

@JsonSerializable()
class ApiPinCodesId {
  @JsonKey(name: 'get')
  Get? apiPinCodesIdGet;
  Delete? delete;

  ApiPinCodesId({this.apiPinCodesIdGet, this.delete});

  factory ApiPinCodesId.fromJson(Map<String, dynamic> json) {
    return _$ApiPinCodesIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiPinCodesIdToJson(this);
}
