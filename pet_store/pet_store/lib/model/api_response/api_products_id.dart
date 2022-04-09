import 'package:json_annotation/json_annotation.dart';

import 'delete.dart';
import 'get.dart';

part 'api_products_id.g.dart';

@JsonSerializable()
class ApiProductsId {
  @JsonKey(name: 'get')
  Get? apiProductsIdGet;
  Delete? delete;

  ApiProductsId({this.apiProductsIdGet, this.delete});

  factory ApiProductsId.fromJson(Map<String, dynamic> json) {
    return _$ApiProductsIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiProductsIdToJson(this);
}
