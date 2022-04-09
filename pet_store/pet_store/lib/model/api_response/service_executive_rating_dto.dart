import 'package:json_annotation/json_annotation.dart';

import 'properties.dart';

part 'service_executive_rating_dto.g.dart';

@JsonSerializable()
class ServiceExecutiveRatingDto {
  String? type;
  Properties? properties;
  String? title;

  ServiceExecutiveRatingDto({this.type, this.properties, this.title});

  factory ServiceExecutiveRatingDto.fromJson(Map<String, dynamic> json) {
    return _$ServiceExecutiveRatingDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ServiceExecutiveRatingDtoToJson(this);
}
