import 'package:json_annotation/json_annotation.dart';

part 'customer_since.g.dart';

@JsonSerializable()
class CustomerSince {
  String? type;
  String? format;

  CustomerSince({this.type, this.format});

  factory CustomerSince.fromJson(Map<String, dynamic> json) {
    return _$CustomerSinceFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CustomerSinceToJson(this);
}
