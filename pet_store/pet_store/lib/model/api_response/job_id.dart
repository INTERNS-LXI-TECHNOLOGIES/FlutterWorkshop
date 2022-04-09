import 'package:json_annotation/json_annotation.dart';

part 'job_id.g.dart';

@JsonSerializable()
class JobId {
  String? type;
  String? format;

  JobId({this.type, this.format});

  factory JobId.fromJson(Map<String, dynamic> json) => _$JobIdFromJson(json);

  Map<String, dynamic> toJson() => _$JobIdToJson(this);
}
