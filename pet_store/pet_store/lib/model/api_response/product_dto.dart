import 'package:json_annotation/json_annotation.dart';

import 'properties.dart';

part 'product_dto.g.dart';

@JsonSerializable()
class ProductDto {
  String? type;
  Properties? properties;
  String? title;

  ProductDto({this.type, this.properties, this.title});

  factory ProductDto.fromJson(Map<String, dynamic> json) {
    return _$ProductDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductDtoToJson(this);
}
