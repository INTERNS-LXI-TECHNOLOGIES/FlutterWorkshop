import 'package:json_annotation/json_annotation.dart';

part 'job_description.g.dart';

@JsonSerializable()
class JobDescription {
  String? type;
  int? minLength;
  int? maxLength;

  JobDescription({this.type, this.minLength, this.maxLength});

  factory JobDescription.fromJson(Map<String, dynamic> json) {
    return _$JobDescriptionFromJson(json);
  }

  Map<String, dynamic> toJson() => _$JobDescriptionToJson(this);
}
