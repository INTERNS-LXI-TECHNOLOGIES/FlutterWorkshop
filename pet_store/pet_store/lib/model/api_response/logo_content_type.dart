import 'package:json_annotation/json_annotation.dart';

part 'logo_content_type.g.dart';

@JsonSerializable()
class LogoContentType {
  String? type;

  LogoContentType({this.type});

  factory LogoContentType.fromJson(Map<String, dynamic> json) {
    return _$LogoContentTypeFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LogoContentTypeToJson(this);
}
