import 'package:json_annotation/json_annotation.dart';

import 'get.dart';
import 'post.dart';
import 'put.dart';

part 'api_products.g.dart';

@JsonSerializable()
class ApiProducts {
  @JsonKey(name: 'get')
  Get? apiProductsGet;
  Post? post;
  Put? put;

  ApiProducts({this.apiProductsGet, this.post, this.put});

  factory ApiProducts.fromJson(Map<String, dynamic> json) {
    return _$ApiProductsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiProductsToJson(this);
}
