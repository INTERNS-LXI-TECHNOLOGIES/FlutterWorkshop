import 'package:json_annotation/json_annotation.dart';

part 'recorded_audio.g.dart';

@JsonSerializable()
class RecordedAudio {
  String? type;
  String? format;

  RecordedAudio({this.type, this.format});

  factory RecordedAudio.fromJson(Map<String, dynamic> json) {
    return _$RecordedAudioFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RecordedAudioToJson(this);
}
