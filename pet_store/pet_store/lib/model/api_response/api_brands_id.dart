import 'package:json_annotation/json_annotation.dart';

import 'delete.dart';
import 'get.dart';

part 'api_brands_id.g.dart';

@JsonSerializable()
class ApiBrandsId {
  @JsonKey(name: 'get')
  Get? apiBrandsIdGet;
  Delete? delete;

  ApiBrandsId({this.apiBrandsIdGet, this.delete});

  factory ApiBrandsId.fromJson(Map<String, dynamic> json) {
    return _$ApiBrandsIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiBrandsIdToJson(this);
}
