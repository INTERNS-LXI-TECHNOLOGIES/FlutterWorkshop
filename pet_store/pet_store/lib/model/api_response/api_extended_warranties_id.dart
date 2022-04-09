import 'package:json_annotation/json_annotation.dart';

import 'delete.dart';
import 'get.dart';

part 'api_extended_warranties_id.g.dart';

@JsonSerializable()
class ApiExtendedWarrantiesId {
  @JsonKey(name: 'get')
  Get? apiExtendedWarrantiesIdGet;
  Delete? delete;

  ApiExtendedWarrantiesId({this.apiExtendedWarrantiesIdGet, this.delete});

  factory ApiExtendedWarrantiesId.fromJson(Map<String, dynamic> json) {
    return _$ApiExtendedWarrantiesIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiExtendedWarrantiesIdToJson(this);
}
