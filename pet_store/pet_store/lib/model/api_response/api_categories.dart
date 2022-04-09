import 'package:json_annotation/json_annotation.dart';

import 'get.dart';
import 'post.dart';
import 'put.dart';

part 'api_categories.g.dart';

@JsonSerializable()
class ApiCategories {
  @JsonKey(name: 'get')
  Get? apiCategoriesGet;
  Post? post;
  Put? put;

  ApiCategories({this.apiCategoriesGet, this.post, this.put});

  factory ApiCategories.fromJson(Map<String, dynamic> json) {
    return _$ApiCategoriesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiCategoriesToJson(this);
}
