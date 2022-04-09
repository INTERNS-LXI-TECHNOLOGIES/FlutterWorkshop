import 'package:json_annotation/json_annotation.dart';

import 'delete.dart';
import 'get.dart';

part 'api_audio_id.g.dart';

@JsonSerializable()
class ApiAudioId {
  @JsonKey(name: 'get')
  Get? apiAudioIdGet;
  Delete? delete;

  ApiAudioId({this.apiAudioIdGet, this.delete});

  factory ApiAudioId.fromJson(Map<String, dynamic> json) {
    return _$ApiAudioIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiAudioIdToJson(this);
}
