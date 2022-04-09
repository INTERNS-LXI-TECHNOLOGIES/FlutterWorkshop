import 'package:json_annotation/json_annotation.dart';

part 'ending_date.g.dart';

@JsonSerializable()
class EndingDate {
  String? type;
  String? format;

  EndingDate({this.type, this.format});

  factory EndingDate.fromJson(Map<String, dynamic> json) {
    return _$EndingDateFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EndingDateToJson(this);
}
