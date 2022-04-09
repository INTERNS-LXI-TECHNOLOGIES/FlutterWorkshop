import 'package:json_annotation/json_annotation.dart';

part 'customer_id.g.dart';

@JsonSerializable()
class CustomerId {
  String? type;
  String? format;

  CustomerId({this.type, this.format});

  factory CustomerId.fromJson(Map<String, dynamic> json) {
    return _$CustomerIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CustomerIdToJson(this);
}
