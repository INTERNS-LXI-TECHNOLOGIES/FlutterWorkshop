import 'package:json_annotation/json_annotation.dart';

part 'service_executive_id.g.dart';

@JsonSerializable()
class ServiceExecutiveId {
  String? type;
  String? format;

  ServiceExecutiveId({this.type, this.format});

  factory ServiceExecutiveId.fromJson(Map<String, dynamic> json) {
    return _$ServiceExecutiveIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ServiceExecutiveIdToJson(this);
}
