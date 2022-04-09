import 'package:json_annotation/json_annotation.dart';

part 'image_content_type.g.dart';

@JsonSerializable()
class ImageContentType {
  String? type;

  ImageContentType({this.type});

  factory ImageContentType.fromJson(Map<String, dynamic> json) {
    return _$ImageContentTypeFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ImageContentTypeToJson(this);
}
