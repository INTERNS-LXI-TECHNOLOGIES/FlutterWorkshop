import 'package:json_annotation/json_annotation.dart';

part 'job_title.g.dart';

@JsonSerializable()
class JobTitle {
  String? type;

  JobTitle({this.type});

  factory JobTitle.fromJson(Map<String, dynamic> json) {
    return _$JobTitleFromJson(json);
  }

  Map<String, dynamic> toJson() => _$JobTitleToJson(this);
}
