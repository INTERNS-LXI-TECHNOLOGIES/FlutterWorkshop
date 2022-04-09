import 'package:json_annotation/json_annotation.dart';

import 'delete.dart';
import 'get.dart';

part 'api_amc_histories_id.g.dart';

@JsonSerializable()
class ApiAmcHistoriesId {
  @JsonKey(name: 'get')
  Get? apiAmcHistoriesIdGet;
  Delete? delete;

  ApiAmcHistoriesId({this.apiAmcHistoriesIdGet, this.delete});

  factory ApiAmcHistoriesId.fromJson(Map<String, dynamic> json) {
    return _$ApiAmcHistoriesIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiAmcHistoriesIdToJson(this);
}
