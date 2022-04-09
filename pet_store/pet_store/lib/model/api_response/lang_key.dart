import 'package:json_annotation/json_annotation.dart';

part 'lang_key.g.dart';

@JsonSerializable()
class LangKey {
  String? type;
  int? minLength;
  int? maxLength;

  LangKey({this.type, this.minLength, this.maxLength});

  factory LangKey.fromJson(Map<String, dynamic> json) {
    return _$LangKeyFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LangKeyToJson(this);
}
