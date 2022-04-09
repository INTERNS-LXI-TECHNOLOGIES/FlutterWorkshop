import 'package:json_annotation/json_annotation.dart';

import 'properties.dart';

part 'attempt_history_dto.g.dart';

@JsonSerializable()
class AttemptHistoryDto {
  String? type;
  List<String>? required;
  Properties? properties;
  String? title;

  AttemptHistoryDto({
    this.type,
    this.required,
    this.properties,
    this.title,
  });

  factory AttemptHistoryDto.fromJson(Map<String, dynamic> json) {
    return _$AttemptHistoryDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AttemptHistoryDtoToJson(this);
}
