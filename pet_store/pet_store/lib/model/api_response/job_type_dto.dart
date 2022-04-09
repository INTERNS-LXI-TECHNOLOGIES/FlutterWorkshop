import 'package:json_annotation/json_annotation.dart';

import 'properties.dart';

part 'job_type_dto.g.dart';

@JsonSerializable()
class JobTypeDto {
  String? type;
  List<String>? required;
  Properties? properties;
  String? title;

  JobTypeDto({this.type, this.required, this.properties, this.title});

  factory JobTypeDto.fromJson(Map<String, dynamic> json) {
    return _$JobTypeDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$JobTypeDtoToJson(this);
}
