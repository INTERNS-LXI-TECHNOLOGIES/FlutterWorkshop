import 'package:json_annotation/json_annotation.dart';

part 'ease_of_communication.g.dart';

@JsonSerializable()
class EaseOfCommunication {
  String? type;
  String? format;

  EaseOfCommunication({this.type, this.format});

  factory EaseOfCommunication.fromJson(Map<String, dynamic> json) {
    return _$EaseOfCommunicationFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EaseOfCommunicationToJson(this);
}
