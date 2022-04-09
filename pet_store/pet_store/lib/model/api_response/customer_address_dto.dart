import 'package:json_annotation/json_annotation.dart';

import 'properties.dart';

part 'customer_address_dto.g.dart';

@JsonSerializable()
class CustomerAddressDto {
  String? type;
  Properties? properties;
  String? title;

  CustomerAddressDto({this.type, this.properties, this.title});

  factory CustomerAddressDto.fromJson(Map<String, dynamic> json) {
    return _$CustomerAddressDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CustomerAddressDtoToJson(this);
}
