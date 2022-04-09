import 'package:json_annotation/json_annotation.dart';

import 'get.dart';
import 'post.dart';
import 'put.dart';

part 'api_extended_warranty_histories.g.dart';

@JsonSerializable()
class ApiExtendedWarrantyHistories {
  @JsonKey(name: 'get')
  Get? apiExtendedWarrantyHistoriesGet;
  Post? post;
  Put? put;

  ApiExtendedWarrantyHistories({
    this.apiExtendedWarrantyHistoriesGet,
    this.post,
    this.put,
  });

  factory ApiExtendedWarrantyHistories.fromJson(Map<String, dynamic> json) {
    return _$ApiExtendedWarrantyHistoriesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiExtendedWarrantyHistoriesToJson(this);
}
