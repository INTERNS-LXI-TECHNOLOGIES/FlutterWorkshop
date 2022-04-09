import 'package:json_annotation/json_annotation.dart';

import 'delete.dart';
import 'get.dart';

part 'api_states_id.g.dart';

@JsonSerializable()
class ApiStatesId {
  @JsonKey(name: 'get')
  Get? apiStatesIdGet;
  Delete? delete;

  ApiStatesId({this.apiStatesIdGet, this.delete});

  factory ApiStatesId.fromJson(Map<String, dynamic> json) {
    return _$ApiStatesIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiStatesIdToJson(this);
}
