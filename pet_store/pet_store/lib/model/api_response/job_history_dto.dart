import 'package:json_annotation/json_annotation.dart';

import 'properties.dart';

part 'job_history_dto.g.dart';

@JsonSerializable()
class JobHistoryDto {
  String? type;
  List<String>? required;
  Properties? properties;
  String? title;

  JobHistoryDto({this.type, this.required, this.properties, this.title});

  factory JobHistoryDto.fromJson(Map<String, dynamic> json) {
    return _$JobHistoryDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$JobHistoryDtoToJson(this);
}
