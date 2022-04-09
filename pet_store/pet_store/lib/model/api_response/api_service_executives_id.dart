import 'package:json_annotation/json_annotation.dart';

import 'delete.dart';
import 'get.dart';

part 'api_service_executives_id.g.dart';

@JsonSerializable()
class ApiServiceExecutivesId {
  @JsonKey(name: 'get')
  Get? apiServiceExecutivesIdGet;
  Delete? delete;

  ApiServiceExecutivesId({this.apiServiceExecutivesIdGet, this.delete});

  factory ApiServiceExecutivesId.fromJson(Map<String, dynamic> json) {
    return _$ApiServiceExecutivesIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiServiceExecutivesIdToJson(this);
}
