import 'package:json_annotation/json_annotation.dart';

import 'properties.dart';

part 'job_dto.g.dart';

@JsonSerializable()
class JobDto {
  String? type;
  List<String>? required;
  Properties? properties;
  String? title;

  JobDto({this.type, this.required, this.properties, this.title});

  factory JobDto.fromJson(Map<String, dynamic> json) {
    return _$JobDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$JobDtoToJson(this);
}
