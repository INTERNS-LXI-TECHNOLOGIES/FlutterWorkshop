import 'package:json_annotation/json_annotation.dart';

import 'properties.dart';

part 'purchased_product_dto.g.dart';

@JsonSerializable()
class PurchasedProductDto {
  String? type;
  Properties? properties;
  String? title;

  PurchasedProductDto({this.type, this.properties, this.title});

  factory PurchasedProductDto.fromJson(Map<String, dynamic> json) {
    return _$PurchasedProductDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PurchasedProductDtoToJson(this);
}
