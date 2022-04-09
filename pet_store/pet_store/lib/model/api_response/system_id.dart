import 'package:json_annotation/json_annotation.dart';

part 'system_id.g.dart';

@JsonSerializable()
class SystemId {
  String? type;
  String? pattern;

  SystemId({this.type, this.pattern});

  factory SystemId.fromJson(Map<String, dynamic> json) {
    return _$SystemIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SystemIdToJson(this);
}
