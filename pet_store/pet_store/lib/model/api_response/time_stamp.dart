import 'package:json_annotation/json_annotation.dart';

part 'time_stamp.g.dart';

@JsonSerializable()
class TimeStamp {
  String? type;
  String? format;

  TimeStamp({this.type, this.format});

  factory TimeStamp.fromJson(Map<String, dynamic> json) {
    return _$TimeStampFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TimeStampToJson(this);
}
