import 'package:json_annotation/json_annotation.dart';

part 'phone.g.dart';

@JsonSerializable()
class Phone {
  String? type;
  int? minLength;
  int? maxLength;
  String? pattern;

  Phone({this.type, this.minLength, this.maxLength, this.pattern});

  factory Phone.fromJson(Map<String, dynamic> json) => _$PhoneFromJson(json);

  Map<String, dynamic> toJson() => _$PhoneToJson(this);
}
