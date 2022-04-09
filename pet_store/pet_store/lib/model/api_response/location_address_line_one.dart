import 'package:json_annotation/json_annotation.dart';

part 'location_address_line_one.g.dart';

@JsonSerializable()
class LocationAddressLineOne {
  String? type;
  int? minLength;
  int? maxLength;

  LocationAddressLineOne({this.type, this.minLength, this.maxLength});

  factory LocationAddressLineOne.fromJson(Map<String, dynamic> json) {
    return _$LocationAddressLineOneFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LocationAddressLineOneToJson(this);
}
