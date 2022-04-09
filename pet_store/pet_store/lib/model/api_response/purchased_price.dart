import 'package:json_annotation/json_annotation.dart';

part 'purchased_price.g.dart';

@JsonSerializable()
class PurchasedPrice {
  String? type;

  PurchasedPrice({this.type});

  factory PurchasedPrice.fromJson(Map<String, dynamic> json) {
    return _$PurchasedPriceFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PurchasedPriceToJson(this);
}
