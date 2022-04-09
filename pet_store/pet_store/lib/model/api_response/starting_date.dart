import 'package:json_annotation/json_annotation.dart';

part 'starting_date.g.dart';

@JsonSerializable()
class StartingDate {
  String? type;
  String? format;

  StartingDate({this.type, this.format});

  factory StartingDate.fromJson(Map<String, dynamic> json) {
    return _$StartingDateFromJson(json);
  }

  Map<String, dynamic> toJson() => _$StartingDateToJson(this);
}
