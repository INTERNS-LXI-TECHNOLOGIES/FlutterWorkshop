import 'package:json_annotation/json_annotation.dart';

part 'image_url.g.dart';

@JsonSerializable()
class ImageUrl {
  String? type;
  int? minLength;
  int? maxLength;

  ImageUrl({this.type, this.minLength, this.maxLength});

  factory ImageUrl.fromJson(Map<String, dynamic> json) {
    return _$ImageUrlFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ImageUrlToJson(this);
}
