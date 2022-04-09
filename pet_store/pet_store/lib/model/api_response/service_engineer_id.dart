import 'package:json_annotation/json_annotation.dart';

part 'service_engineer_id.g.dart';

@JsonSerializable()
class ServiceEngineerId {
  String? type;
  String? pattern;

  ServiceEngineerId({this.type, this.pattern});

  factory ServiceEngineerId.fromJson(Map<String, dynamic> json) {
    return _$ServiceEngineerIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ServiceEngineerIdToJson(this);
}
