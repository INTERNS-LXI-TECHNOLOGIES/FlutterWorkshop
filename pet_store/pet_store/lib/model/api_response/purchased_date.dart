import 'package:json_annotation/json_annotation.dart';

part 'purchased_date.g.dart';

@JsonSerializable()
class PurchasedDate {
  String? type;
  String? format;

  PurchasedDate({this.type, this.format});

  factory PurchasedDate.fromJson(Map<String, dynamic> json) {
    return _$PurchasedDateFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PurchasedDateToJson(this);
}
