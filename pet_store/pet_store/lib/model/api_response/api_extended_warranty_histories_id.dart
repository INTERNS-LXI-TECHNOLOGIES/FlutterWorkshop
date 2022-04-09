import 'package:json_annotation/json_annotation.dart';

import 'delete.dart';
import 'get.dart';

part 'api_extended_warranty_histories_id.g.dart';

@JsonSerializable()
class ApiExtendedWarrantyHistoriesId {
  @JsonKey(name: 'get')
  Get? apiExtendedWarrantyHistoriesIdGet;
  Delete? delete;

  ApiExtendedWarrantyHistoriesId({
    this.apiExtendedWarrantyHistoriesIdGet,
    this.delete,
  });

  factory ApiExtendedWarrantyHistoriesId.fromJson(Map<String, dynamic> json) {
    return _$ApiExtendedWarrantyHistoriesIdFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ApiExtendedWarrantyHistoriesIdToJson(this);
  }
}
