import 'package:json_annotation/json_annotation.dart';

import 'get.dart';
import 'post.dart';
import 'put.dart';

part 'api_amc_histories.g.dart';

@JsonSerializable()
class ApiAmcHistories {
  @JsonKey(name: 'get')
  Get? apiAmcHistoriesGet;
  Post? post;
  Put? put;

  ApiAmcHistories({this.apiAmcHistoriesGet, this.post, this.put});

  factory ApiAmcHistories.fromJson(Map<String, dynamic> json) {
    return _$ApiAmcHistoriesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiAmcHistoriesToJson(this);
}
