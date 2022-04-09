import 'package:json_annotation/json_annotation.dart';

import 'properties.dart';

part 'service_executive_dto.g.dart';

@JsonSerializable()
class ServiceExecutiveDto {
  String? type;
  List<String>? required;
  Properties? properties;
  String? title;

  ServiceExecutiveDto({
    this.type,
    this.required,
    this.properties,
    this.title,
  });

  factory ServiceExecutiveDto.fromJson(Map<String, dynamic> json) {
    return _$ServiceExecutiveDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ServiceExecutiveDtoToJson(this);
}
