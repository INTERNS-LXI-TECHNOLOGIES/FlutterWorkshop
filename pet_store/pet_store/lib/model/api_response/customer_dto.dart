import 'package:json_annotation/json_annotation.dart';

import 'properties.dart';

part 'customer_dto.g.dart';

@JsonSerializable()
class CustomerDto {
  String? type;
  List<String>? required;
  Properties? properties;
  String? title;

  CustomerDto({this.type, this.required, this.properties, this.title});

  factory CustomerDto.fromJson(Map<String, dynamic> json) {
    return _$CustomerDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CustomerDtoToJson(this);
}
