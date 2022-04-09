import 'package:json_annotation/json_annotation.dart';

part 'product_id.g.dart';

@JsonSerializable()
class ProductId {
  String? type;
  String? pattern;

  ProductId({this.type, this.pattern});

  factory ProductId.fromJson(Map<String, dynamic> json) {
    return _$ProductIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductIdToJson(this);
}
