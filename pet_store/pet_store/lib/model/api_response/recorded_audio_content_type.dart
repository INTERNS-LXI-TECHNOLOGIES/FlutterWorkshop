import 'package:json_annotation/json_annotation.dart';

part 'recorded_audio_content_type.g.dart';

@JsonSerializable()
class RecordedAudioContentType {
  String? type;

  RecordedAudioContentType({this.type});

  factory RecordedAudioContentType.fromJson(Map<String, dynamic> json) {
    return _$RecordedAudioContentTypeFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RecordedAudioContentTypeToJson(this);
}
