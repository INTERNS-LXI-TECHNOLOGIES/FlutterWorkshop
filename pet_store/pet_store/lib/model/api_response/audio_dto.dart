import 'package:json_annotation/json_annotation.dart';

import 'properties.dart';

part 'audio_dto.g.dart';

@JsonSerializable()
class AudioDto {
  String? type;
  Properties? properties;
  String? title;

  AudioDto({this.type, this.properties, this.title});

  factory AudioDto.fromJson(Map<String, dynamic> json) {
    return _$AudioDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AudioDtoToJson(this);
}
