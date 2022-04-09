import 'package:json_annotation/json_annotation.dart';

part 'speed_of_response.g.dart';

@JsonSerializable()
class SpeedOfResponse {
  String? type;
  String? format;

  SpeedOfResponse({this.type, this.format});

  factory SpeedOfResponse.fromJson(Map<String, dynamic> json) {
    return _$SpeedOfResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SpeedOfResponseToJson(this);
}
