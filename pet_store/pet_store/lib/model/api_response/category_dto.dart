import 'package:json_annotation/json_annotation.dart';

import 'properties.dart';

part 'category_dto.g.dart';

@JsonSerializable()
class CategoryDto {
  String? type;
  Properties? properties;
  String? title;

  CategoryDto({this.type, this.properties, this.title});

  factory CategoryDto.fromJson(Map<String, dynamic> json) {
    return _$CategoryDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CategoryDtoToJson(this);
}
