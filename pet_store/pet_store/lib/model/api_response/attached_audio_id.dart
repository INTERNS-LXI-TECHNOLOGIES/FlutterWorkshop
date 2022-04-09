import 'package:json_annotation/json_annotation.dart';

part 'attached_audio_id.g.dart';

@JsonSerializable()
class AttachedAudioId {
  String? type;
  String? format;

  AttachedAudioId({this.type, this.format});

  factory AttachedAudioId.fromJson(Map<String, dynamic> json) {
    return _$AttachedAudioIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AttachedAudioIdToJson(this);
}
