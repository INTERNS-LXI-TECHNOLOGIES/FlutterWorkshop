import 'package:json_annotation/json_annotation.dart';

part 'attachment_content_type.g.dart';

@JsonSerializable()
class AttachmentContentType {
  String? type;

  AttachmentContentType({this.type});

  factory AttachmentContentType.fromJson(Map<String, dynamic> json) {
    return _$AttachmentContentTypeFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AttachmentContentTypeToJson(this);
}
