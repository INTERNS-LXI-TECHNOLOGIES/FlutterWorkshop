import 'package:json_annotation/json_annotation.dart';

import 'get.dart';
import 'post.dart';
import 'put.dart';

part 'api_audio.g.dart';

@JsonSerializable()
class ApiAudio {
  @JsonKey(name: 'get')
  Get? apiAudioGet;
  Post? post;
  Put? put;

  ApiAudio({this.apiAudioGet, this.post, this.put});

  factory ApiAudio.fromJson(Map<String, dynamic> json) {
    return _$ApiAudioFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiAudioToJson(this);
}
