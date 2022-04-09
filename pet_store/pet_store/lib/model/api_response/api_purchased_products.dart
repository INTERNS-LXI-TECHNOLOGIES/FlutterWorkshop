import 'package:json_annotation/json_annotation.dart';

import 'get.dart';
import 'post.dart';
import 'put.dart';

part 'api_purchased_products.g.dart';

@JsonSerializable()
class ApiPurchasedProducts {
  @JsonKey(name: 'get')
  Get? apiPurchasedProductsGet;
  Post? post;
  Put? put;

  ApiPurchasedProducts({this.apiPurchasedProductsGet, this.post, this.put});

  factory ApiPurchasedProducts.fromJson(Map<String, dynamic> json) {
    return _$ApiPurchasedProductsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiPurchasedProductsToJson(this);
}
