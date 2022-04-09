import 'package:json_annotation/json_annotation.dart';

import 'get.dart';
import 'post.dart';
import 'put.dart';

part 'api_brands.g.dart';

@JsonSerializable()
class ApiBrands {
  @JsonKey(name: 'get')
  Get? apiBrandsGet;
  Post? post;
  Put? put;

  ApiBrands({this.apiBrandsGet, this.post, this.put});

  factory ApiBrands.fromJson(Map<String, dynamic> json) {
    return _$ApiBrandsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiBrandsToJson(this);
}
