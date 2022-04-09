import 'package:json_annotation/json_annotation.dart';

import 'delete.dart';
import 'get.dart';

part 'api_purchased_products_id.g.dart';

@JsonSerializable()
class ApiPurchasedProductsId {
  @JsonKey(name: 'get')
  Get? apiPurchasedProductsIdGet;
  Delete? delete;

  ApiPurchasedProductsId({this.apiPurchasedProductsIdGet, this.delete});

  factory ApiPurchasedProductsId.fromJson(Map<String, dynamic> json) {
    return _$ApiPurchasedProductsIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiPurchasedProductsIdToJson(this);
}
