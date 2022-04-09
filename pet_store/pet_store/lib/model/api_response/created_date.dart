import 'package:json_annotation/json_annotation.dart';

part 'created_date.g.dart';

@JsonSerializable()
class CreatedDate {
  String? type;
  String? format;

  CreatedDate({this.type, this.format});

  factory CreatedDate.fromJson(Map<String, dynamic> json) {
    return _$CreatedDateFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CreatedDateToJson(this);
}
