import 'package:json_annotation/json_annotation.dart';

part 'location.g.dart';

@JsonSerializable()
class Location {
	String? type;
	List<String>? enum;

	Location({this.type, this.enum});

	factory Location.fromJson(Map<String, dynamic> json) {
		return _$LocationFromJson(json);
	}

	Map<String, dynamic> toJson() => _$LocationToJson(this);
}
