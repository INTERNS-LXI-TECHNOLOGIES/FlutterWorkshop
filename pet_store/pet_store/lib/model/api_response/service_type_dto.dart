import 'package:json_annotation/json_annotation.dart';

import 'properties.dart';

part 'service_type_dto.g.dart';

@JsonSerializable()
class ServiceTypeDto {
  String? type;
  List<String>? required;
  Properties? properties;
  String? title;

  ServiceTypeDto({this.type, this.required, this.properties, this.title});

  factory ServiceTypeDto.fromJson(Map<String, dynamic> json) {
    return _$ServiceTypeDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ServiceTypeDtoToJson(this);
}
