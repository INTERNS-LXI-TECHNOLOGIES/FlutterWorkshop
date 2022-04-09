import 'package:json_annotation/json_annotation.dart';

part 'location_address_line_two.g.dart';

@JsonSerializable()
class LocationAddressLineTwo {
  String? type;
  int? minLength;
  int? maxLength;

  LocationAddressLineTwo({this.type, this.minLength, this.maxLength});

  factory LocationAddressLineTwo.fromJson(Map<String, dynamic> json) {
    return _$LocationAddressLineTwoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LocationAddressLineTwoToJson(this);
}
