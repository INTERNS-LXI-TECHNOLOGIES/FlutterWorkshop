import 'package:json_annotation/json_annotation.dart';

part 'main_category_id.g.dart';

@JsonSerializable()
class MainCategoryId {
  String? type;
  String? format;

  MainCategoryId({this.type, this.format});

  factory MainCategoryId.fromJson(Map<String, dynamic> json) {
    return _$MainCategoryIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MainCategoryIdToJson(this);
}
