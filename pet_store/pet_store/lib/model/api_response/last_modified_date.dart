import 'package:json_annotation/json_annotation.dart';

part 'last_modified_date.g.dart';

@JsonSerializable()
class LastModifiedDate {
  String? type;
  String? format;

  LastModifiedDate({this.type, this.format});

  factory LastModifiedDate.fromJson(Map<String, dynamic> json) {
    return _$LastModifiedDateFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LastModifiedDateToJson(this);
}
