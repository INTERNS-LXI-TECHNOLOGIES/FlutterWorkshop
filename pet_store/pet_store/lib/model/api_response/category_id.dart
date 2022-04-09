import 'package:json_annotation/json_annotation.dart';

part 'category_id.g.dart';

@JsonSerializable()
class CategoryId {
  String? type;
  String? format;

  CategoryId({this.type, this.format});

  factory CategoryId.fromJson(Map<String, dynamic> json) {
    return _$CategoryIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CategoryIdToJson(this);
}
