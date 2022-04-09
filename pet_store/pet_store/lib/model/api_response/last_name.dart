import 'package:json_annotation/json_annotation.dart';

part 'last_name.g.dart';

@JsonSerializable()
class LastName {
  String? type;
  int? minLength;
  int? maxLength;

  LastName({this.type, this.minLength, this.maxLength});

  factory LastName.fromJson(Map<String, dynamic> json) {
    return _$LastNameFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LastNameToJson(this);
}
