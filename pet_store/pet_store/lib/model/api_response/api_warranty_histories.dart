import 'package:json_annotation/json_annotation.dart';

import 'get.dart';
import 'post.dart';
import 'put.dart';

part 'api_warranty_histories.g.dart';

@JsonSerializable()
class ApiWarrantyHistories {
  @JsonKey(name: 'get')
  Get? apiWarrantyHistoriesGet;
  Post? post;
  Put? put;

  ApiWarrantyHistories({this.apiWarrantyHistoriesGet, this.post, this.put});

  factory ApiWarrantyHistories.fromJson(Map<String, dynamic> json) {
    return _$ApiWarrantyHistoriesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiWarrantyHistoriesToJson(this);
}
