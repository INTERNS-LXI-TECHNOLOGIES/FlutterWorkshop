import 'package:json_annotation/json_annotation.dart';

part 'job_type_id.g.dart';

@JsonSerializable()
class JobTypeId {
  String? type;
  String? format;

  JobTypeId({this.type, this.format});

  factory JobTypeId.fromJson(Map<String, dynamic> json) {
    return _$JobTypeIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$JobTypeIdToJson(this);
}
