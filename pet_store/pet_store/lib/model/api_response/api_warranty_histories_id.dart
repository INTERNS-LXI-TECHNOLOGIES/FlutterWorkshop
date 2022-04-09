import 'package:json_annotation/json_annotation.dart';

import 'delete.dart';
import 'get.dart';

part 'api_warranty_histories_id.g.dart';

@JsonSerializable()
class ApiWarrantyHistoriesId {
  @JsonKey(name: 'get')
  Get? apiWarrantyHistoriesIdGet;
  Delete? delete;

  ApiWarrantyHistoriesId({this.apiWarrantyHistoriesIdGet, this.delete});

  factory ApiWarrantyHistoriesId.fromJson(Map<String, dynamic> json) {
    return _$ApiWarrantyHistoriesIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiWarrantyHistoriesIdToJson(this);
}
