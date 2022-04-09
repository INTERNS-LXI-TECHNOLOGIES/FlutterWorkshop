import 'package:json_annotation/json_annotation.dart';

import 'delete.dart';
import 'get.dart';

part 'api_categories_id.g.dart';

@JsonSerializable()
class ApiCategoriesId {
  @JsonKey(name: 'get')
  Get? apiCategoriesIdGet;
  Delete? delete;

  ApiCategoriesId({this.apiCategoriesIdGet, this.delete});

  factory ApiCategoriesId.fromJson(Map<String, dynamic> json) {
    return _$ApiCategoriesIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiCategoriesIdToJson(this);
}
