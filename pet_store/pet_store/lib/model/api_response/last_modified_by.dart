import 'package:json_annotation/json_annotation.dart';

part 'last_modified_by.g.dart';

@JsonSerializable()
class LastModifiedBy {
  String? type;

  LastModifiedBy({this.type});

  factory LastModifiedBy.fromJson(Map<String, dynamic> json) {
    return _$LastModifiedByFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LastModifiedByToJson(this);
}
