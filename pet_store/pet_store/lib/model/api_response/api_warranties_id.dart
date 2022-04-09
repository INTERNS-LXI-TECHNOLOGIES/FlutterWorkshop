import 'package:json_annotation/json_annotation.dart';

import 'delete.dart';
import 'get.dart';

part 'api_warranties_id.g.dart';

@JsonSerializable()
class ApiWarrantiesId {
  @JsonKey(name: 'get')
  Get? apiWarrantiesIdGet;
  Delete? delete;

  ApiWarrantiesId({this.apiWarrantiesIdGet, this.delete});

  factory ApiWarrantiesId.fromJson(Map<String, dynamic> json) {
    return _$ApiWarrantiesIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiWarrantiesIdToJson(this);
}
