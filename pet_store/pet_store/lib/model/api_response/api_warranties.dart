import 'package:json_annotation/json_annotation.dart';

import 'get.dart';
import 'post.dart';
import 'put.dart';

part 'api_warranties.g.dart';

@JsonSerializable()
class ApiWarranties {
  @JsonKey(name: 'get')
  Get? apiWarrantiesGet;
  Post? post;
  Put? put;

  ApiWarranties({this.apiWarrantiesGet, this.post, this.put});

  factory ApiWarranties.fromJson(Map<String, dynamic> json) {
    return _$ApiWarrantiesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiWarrantiesToJson(this);
}
