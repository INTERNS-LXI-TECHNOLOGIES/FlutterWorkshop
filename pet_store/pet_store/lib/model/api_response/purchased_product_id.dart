import 'package:json_annotation/json_annotation.dart';

part 'purchased_product_id.g.dart';

@JsonSerializable()
class PurchasedProductId {
  String? type;
  String? format;

  PurchasedProductId({this.type, this.format});

  factory PurchasedProductId.fromJson(Map<String, dynamic> json) {
    return _$PurchasedProductIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PurchasedProductIdToJson(this);
}
